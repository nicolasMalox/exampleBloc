// ignore_for_file: must_be_immutable

part of 'total_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Total widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TotalEvent extends Equatable {}

/// Event that is dispatched when the Total widget is first created.
class TotalInitialEvent extends TotalEvent {
  @override
  List<Object?> get props => [];
}
