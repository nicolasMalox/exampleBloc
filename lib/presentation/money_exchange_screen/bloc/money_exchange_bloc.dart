import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/money_exchange_screen/models/money_exchange_model.dart';
part 'money_exchange_event.dart';
part 'money_exchange_state.dart';

/// A bloc that manages the state of a MoneyExchange according to the event that is dispatched to it.
class MoneyExchangeBloc extends Bloc<MoneyExchangeEvent, MoneyExchangeState> {
  MoneyExchangeBloc(MoneyExchangeState initialState) : super(initialState) {
    on<MoneyExchangeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MoneyExchangeInitialEvent event,
    Emitter<MoneyExchangeState> emit,
  ) async {
    emit(state.copyWith(
        priceController: TextEditingController(),
        priceController1: TextEditingController()));
  }
}
