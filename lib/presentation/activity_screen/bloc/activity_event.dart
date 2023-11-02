// ignore_for_file: must_be_immutable

part of 'activity_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Activity widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ActivityEvent extends Equatable {}

/// Event that is dispatched when the Activity widget is first created.
class ActivityInitialEvent extends ActivityEvent {
  @override
  List<Object?> get props => [];
}
