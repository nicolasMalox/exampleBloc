// ignore_for_file: must_be_immutable

part of 'send_money_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SendMoney widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SendMoneyEvent extends Equatable {}

/// Event that is dispatched when the SendMoney widget is first created.
class SendMoneyInitialEvent extends SendMoneyEvent {
  @override
  List<Object?> get props => [];
}
