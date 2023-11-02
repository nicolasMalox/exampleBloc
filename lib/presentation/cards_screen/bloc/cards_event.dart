// ignore_for_file: must_be_immutable

part of 'cards_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Cards widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CardsEvent extends Equatable {}

/// Event that is dispatched when the Cards widget is first created.
class CardsInitialEvent extends CardsEvent {
  @override
  List<Object?> get props => [];
}
