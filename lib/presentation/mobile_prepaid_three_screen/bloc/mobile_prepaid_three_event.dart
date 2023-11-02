// ignore_for_file: must_be_immutable

part of 'mobile_prepaid_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MobilePrepaidThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MobilePrepaidThreeEvent extends Equatable {}

/// Event that is dispatched when the MobilePrepaidThree widget is first created.
class MobilePrepaidThreeInitialEvent extends MobilePrepaidThreeEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends MobilePrepaidThreeEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
