// ignore_for_file: must_be_immutable

part of 'log_in_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LogIn widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LogInEvent extends Equatable {}

/// Event that is dispatched when the LogIn widget is first created.
class LogInInitialEvent extends LogInEvent {
  @override
  List<Object?> get props => [];
}

///Event that is dispatched when the user calls the https://nodedemo.dhiwise.co/device/auth/login API.
class CreateLoginEvent extends LogInEvent {
  CreateLoginEvent({
    this.onCreateLoginEventSuccess,
    this.onCreateLoginEventError,
  });

  Function? onCreateLoginEventSuccess;

  Function? onCreateLoginEventError;

  @override
  List<Object?> get props => [
        onCreateLoginEventSuccess,
        onCreateLoginEventError,
      ];
}
