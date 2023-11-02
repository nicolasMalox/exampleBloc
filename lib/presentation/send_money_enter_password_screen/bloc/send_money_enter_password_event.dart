// ignore_for_file: must_be_immutable

part of 'send_money_enter_password_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SendMoneyEnterPassword widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SendMoneyEnterPasswordEvent extends Equatable {}

/// Event that is dispatched when the SendMoneyEnterPassword widget is first created.
class SendMoneyEnterPasswordInitialEvent extends SendMoneyEnterPasswordEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends SendMoneyEnterPasswordEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
