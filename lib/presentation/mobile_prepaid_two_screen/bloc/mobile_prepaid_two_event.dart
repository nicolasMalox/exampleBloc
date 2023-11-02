// ignore_for_file: must_be_immutable

part of 'mobile_prepaid_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MobilePrepaidTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MobilePrepaidTwoEvent extends Equatable {}

/// Event that is dispatched when the MobilePrepaidTwo widget is first created.
class MobilePrepaidTwoInitialEvent extends MobilePrepaidTwoEvent {
  @override
  List<Object?> get props => [];
}
