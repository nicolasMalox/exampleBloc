// ignore_for_file: must_be_immutable

part of 'request_sent_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RequestSent widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RequestSentEvent extends Equatable {}

/// Event that is dispatched when the RequestSent widget is first created.
class RequestSentInitialEvent extends RequestSentEvent {
  @override
  List<Object?> get props => [];
}
