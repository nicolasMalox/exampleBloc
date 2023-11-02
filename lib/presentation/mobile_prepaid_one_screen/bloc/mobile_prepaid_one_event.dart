// ignore_for_file: must_be_immutable

part of 'mobile_prepaid_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MobilePrepaidOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MobilePrepaidOneEvent extends Equatable {}

/// Event that is dispatched when the MobilePrepaidOne widget is first created.
class MobilePrepaidOneInitialEvent extends MobilePrepaidOneEvent {
  @override
  List<Object?> get props => [];
}
