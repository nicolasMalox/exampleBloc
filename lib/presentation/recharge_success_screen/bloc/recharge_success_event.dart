// ignore_for_file: must_be_immutable

part of 'recharge_success_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RechargeSuccess widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RechargeSuccessEvent extends Equatable {}

/// Event that is dispatched when the RechargeSuccess widget is first created.
class RechargeSuccessInitialEvent extends RechargeSuccessEvent {
  @override
  List<Object?> get props => [];
}
