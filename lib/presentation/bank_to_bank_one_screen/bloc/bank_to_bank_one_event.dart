// ignore_for_file: must_be_immutable

part of 'bank_to_bank_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BankToBankOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BankToBankOneEvent extends Equatable {}

/// Event that is dispatched when the BankToBankOne widget is first created.
class BankToBankOneInitialEvent extends BankToBankOneEvent {
  @override
  List<Object?> get props => [];
}
