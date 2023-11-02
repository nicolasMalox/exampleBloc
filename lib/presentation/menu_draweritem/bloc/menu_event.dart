// ignore_for_file: must_be_immutable

part of 'menu_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Menu widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MenuEvent extends Equatable {}

/// Event that is dispatched when the Menu widget is first created.
class MenuInitialEvent extends MenuEvent {
  @override
  List<Object?> get props => [];
}
