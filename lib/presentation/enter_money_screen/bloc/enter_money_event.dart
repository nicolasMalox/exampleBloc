// ignore_for_file: must_be_immutable

part of 'enter_money_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EnterMoney widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EnterMoneyEvent extends Equatable {}

/// Event that is dispatched when the EnterMoney widget is first created.
class EnterMoneyInitialEvent extends EnterMoneyEvent {
  @override
  List<Object?> get props => [];
}
