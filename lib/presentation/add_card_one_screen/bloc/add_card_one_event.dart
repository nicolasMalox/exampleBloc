// ignore_for_file: must_be_immutable

part of 'add_card_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddCardOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddCardOneEvent extends Equatable {}

/// Event that is dispatched when the AddCardOne widget is first created.
class AddCardOneInitialEvent extends AddCardOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends AddCardOneEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
