// ignore_for_file: must_be_immutable

part of 'receive_money_request_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReceiveMoneyRequest widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReceiveMoneyRequestEvent extends Equatable {}

/// Event that is dispatched when the ReceiveMoneyRequest widget is first created.
class ReceiveMoneyRequestInitialEvent extends ReceiveMoneyRequestEvent {
  @override
  List<Object?> get props => [];
}
