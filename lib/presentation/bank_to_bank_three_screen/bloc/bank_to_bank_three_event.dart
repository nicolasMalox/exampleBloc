// ignore_for_file: must_be_immutable

part of 'bank_to_bank_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BankToBankThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BankToBankThreeEvent extends Equatable {}

/// Event that is dispatched when the BankToBankThree widget is first created.
class BankToBankThreeInitialEvent extends BankToBankThreeEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends BankToBankThreeEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
