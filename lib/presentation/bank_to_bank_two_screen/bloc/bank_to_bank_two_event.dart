// ignore_for_file: must_be_immutable

part of 'bank_to_bank_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BankToBankTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BankToBankTwoEvent extends Equatable {}

/// Event that is dispatched when the BankToBankTwo widget is first created.
class BankToBankTwoInitialEvent extends BankToBankTwoEvent {
  @override
  List<Object?> get props => [];
}
