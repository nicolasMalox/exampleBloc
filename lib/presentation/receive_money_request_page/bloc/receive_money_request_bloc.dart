import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/receive_money_request_page/models/receive_money_request_model.dart';
part 'receive_money_request_event.dart';
part 'receive_money_request_state.dart';

/// A bloc that manages the state of a ReceiveMoneyRequest according to the event that is dispatched to it.
class ReceiveMoneyRequestBloc
    extends Bloc<ReceiveMoneyRequestEvent, ReceiveMoneyRequestState> {
  ReceiveMoneyRequestBloc(ReceiveMoneyRequestState initialState)
      : super(initialState) {
    on<ReceiveMoneyRequestInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReceiveMoneyRequestInitialEvent event,
    Emitter<ReceiveMoneyRequestState> emit,
  ) async {
    emit(state.copyWith(
        firstNameController: TextEditingController(),
        lastNameController: TextEditingController(),
        emailController: TextEditingController(),
        nameController: TextEditingController(),
        countryController: TextEditingController(),
        priceController: TextEditingController(),
        priceController1: TextEditingController(),
        writeashortController: TextEditingController()));
  }
}
