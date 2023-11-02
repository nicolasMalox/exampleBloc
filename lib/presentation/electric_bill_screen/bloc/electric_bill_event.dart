// ignore_for_file: must_be_immutable

part of 'electric_bill_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ElectricBill widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ElectricBillEvent extends Equatable {}

/// Event that is dispatched when the ElectricBill widget is first created.
class ElectricBillInitialEvent extends ElectricBillEvent {
  @override
  List<Object?> get props => [];
}
