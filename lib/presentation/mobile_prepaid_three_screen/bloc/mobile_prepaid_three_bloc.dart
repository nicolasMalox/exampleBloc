import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/mobile_prepaid_three_screen/models/mobile_prepaid_three_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'mobile_prepaid_three_event.dart';
part 'mobile_prepaid_three_state.dart';

/// A bloc that manages the state of a MobilePrepaidThree according to the event that is dispatched to it.
class MobilePrepaidThreeBloc
    extends Bloc<MobilePrepaidThreeEvent, MobilePrepaidThreeState>
    with CodeAutoFill {
  MobilePrepaidThreeBloc(MobilePrepaidThreeState initialState)
      : super(initialState) {
    on<MobilePrepaidThreeInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<MobilePrepaidThreeState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    MobilePrepaidThreeInitialEvent event,
    Emitter<MobilePrepaidThreeState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
  }
}
