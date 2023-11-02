import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/bil_payment_success_screen/models/bil_payment_success_model.dart';
part 'bil_payment_success_event.dart';
part 'bil_payment_success_state.dart';

/// A bloc that manages the state of a BilPaymentSuccess according to the event that is dispatched to it.
class BilPaymentSuccessBloc
    extends Bloc<BilPaymentSuccessEvent, BilPaymentSuccessState> {
  BilPaymentSuccessBloc(BilPaymentSuccessState initialState)
      : super(initialState) {
    on<BilPaymentSuccessInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BilPaymentSuccessInitialEvent event,
    Emitter<BilPaymentSuccessState> emit,
  ) async {}
}
