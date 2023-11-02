// ignore_for_file: must_be_immutable

part of 'receive_money_request_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReceiveMoneyRequestTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReceiveMoneyRequestTabContainerEvent extends Equatable {}

/// Event that is dispatched when the ReceiveMoneyRequestTabContainer widget is first created.
class ReceiveMoneyRequestTabContainerInitialEvent
    extends ReceiveMoneyRequestTabContainerEvent {
  @override
  List<Object?> get props => [];
}
