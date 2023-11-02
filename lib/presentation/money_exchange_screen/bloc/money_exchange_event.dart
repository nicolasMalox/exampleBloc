// ignore_for_file: must_be_immutable

part of 'money_exchange_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MoneyExchange widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MoneyExchangeEvent extends Equatable {}

/// Event that is dispatched when the MoneyExchange widget is first created.
class MoneyExchangeInitialEvent extends MoneyExchangeEvent {
  @override
  List<Object?> get props => [];
}
