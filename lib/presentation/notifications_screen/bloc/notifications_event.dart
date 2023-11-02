// ignore_for_file: must_be_immutable

part of 'notifications_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Notifications widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NotificationsEvent extends Equatable {}

/// Event that is dispatched when the Notifications widget is first created.
class NotificationsInitialEvent extends NotificationsEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends NotificationsEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends NotificationsEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch2Event extends NotificationsEvent {
  ChangeSwitch2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch3Event extends NotificationsEvent {
  ChangeSwitch3Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch4Event extends NotificationsEvent {
  ChangeSwitch4Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch5Event extends NotificationsEvent {
  ChangeSwitch5Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch6Event extends NotificationsEvent {
  ChangeSwitch6Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch7Event extends NotificationsEvent {
  ChangeSwitch7Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
