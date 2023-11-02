// ignore_for_file: must_be_immutable

part of 'receive_money_personal_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReceiveMoneyPersonal widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReceiveMoneyPersonalEvent extends Equatable {}

/// Event that is dispatched when the ReceiveMoneyPersonal widget is first created.
class ReceiveMoneyPersonalInitialEvent extends ReceiveMoneyPersonalEvent {
  @override
  List<Object?> get props => [];
}
