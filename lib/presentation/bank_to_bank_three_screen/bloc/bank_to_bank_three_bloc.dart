import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/bank_to_bank_three_screen/models/bank_to_bank_three_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'bank_to_bank_three_event.dart';
part 'bank_to_bank_three_state.dart';

/// A bloc that manages the state of a BankToBankThree according to the event that is dispatched to it.
class BankToBankThreeBloc
    extends Bloc<BankToBankThreeEvent, BankToBankThreeState> with CodeAutoFill {
  BankToBankThreeBloc(BankToBankThreeState initialState) : super(initialState) {
    on<BankToBankThreeInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<BankToBankThreeState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    BankToBankThreeInitialEvent event,
    Emitter<BankToBankThreeState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
  }
}
