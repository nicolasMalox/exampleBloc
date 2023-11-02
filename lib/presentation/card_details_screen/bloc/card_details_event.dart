// ignore_for_file: must_be_immutable

part of 'card_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CardDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CardDetailsEvent extends Equatable {}

/// Event that is dispatched when the CardDetails widget is first created.
class CardDetailsInitialEvent extends CardDetailsEvent {
  @override
  List<Object?> get props => [];
}
