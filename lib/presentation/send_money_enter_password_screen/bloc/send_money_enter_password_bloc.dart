import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/send_money_enter_password_screen/models/send_money_enter_password_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'send_money_enter_password_event.dart';
part 'send_money_enter_password_state.dart';

/// A bloc that manages the state of a SendMoneyEnterPassword according to the event that is dispatched to it.
class SendMoneyEnterPasswordBloc
    extends Bloc<SendMoneyEnterPasswordEvent, SendMoneyEnterPasswordState>
    with CodeAutoFill {
  SendMoneyEnterPasswordBloc(SendMoneyEnterPasswordState initialState)
      : super(initialState) {
    on<SendMoneyEnterPasswordInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<SendMoneyEnterPasswordState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    SendMoneyEnterPasswordInitialEvent event,
    Emitter<SendMoneyEnterPasswordState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
  }
}
