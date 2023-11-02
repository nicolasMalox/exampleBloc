// ignore_for_file: must_be_immutable

part of 'add_person_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddPerson widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddPersonEvent extends Equatable {}

/// Event that is dispatched when the AddPerson widget is first created.
class AddPersonInitialEvent extends AddPersonEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends AddPersonEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
