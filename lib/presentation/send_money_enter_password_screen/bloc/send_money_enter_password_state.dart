// ignore_for_file: must_be_immutable

part of 'send_money_enter_password_bloc.dart';

/// Represents the state of SendMoneyEnterPassword in the application.
class SendMoneyEnterPasswordState extends Equatable {
  SendMoneyEnterPasswordState({
    this.otpController,
    this.sendMoneyEnterPasswordModelObj,
  });

  TextEditingController? otpController;

  SendMoneyEnterPasswordModel? sendMoneyEnterPasswordModelObj;

  @override
  List<Object?> get props => [
        otpController,
        sendMoneyEnterPasswordModelObj,
      ];
  SendMoneyEnterPasswordState copyWith({
    TextEditingController? otpController,
    SendMoneyEnterPasswordModel? sendMoneyEnterPasswordModelObj,
  }) {
    return SendMoneyEnterPasswordState(
      otpController: otpController ?? this.otpController,
      sendMoneyEnterPasswordModelObj:
          sendMoneyEnterPasswordModelObj ?? this.sendMoneyEnterPasswordModelObj,
    );
  }
}
