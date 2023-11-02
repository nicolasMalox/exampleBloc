// ignore_for_file: must_be_immutable

part of 'pay_bill_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PayBill widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PayBillEvent extends Equatable {}

/// Event that is dispatched when the PayBill widget is first created.
class PayBillInitialEvent extends PayBillEvent {
  @override
  List<Object?> get props => [];
}
