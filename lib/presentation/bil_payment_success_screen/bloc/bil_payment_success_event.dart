// ignore_for_file: must_be_immutable

part of 'bil_payment_success_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BilPaymentSuccess widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BilPaymentSuccessEvent extends Equatable {}

/// Event that is dispatched when the BilPaymentSuccess widget is first created.
class BilPaymentSuccessInitialEvent extends BilPaymentSuccessEvent {
  @override
  List<Object?> get props => [];
}
