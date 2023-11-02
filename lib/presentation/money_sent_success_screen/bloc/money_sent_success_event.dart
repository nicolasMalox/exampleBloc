// ignore_for_file: must_be_immutable

part of 'money_sent_success_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MoneySentSuccess widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MoneySentSuccessEvent extends Equatable {}

/// Event that is dispatched when the MoneySentSuccess widget is first created.
class MoneySentSuccessInitialEvent extends MoneySentSuccessEvent {
  @override
  List<Object?> get props => [];
}
