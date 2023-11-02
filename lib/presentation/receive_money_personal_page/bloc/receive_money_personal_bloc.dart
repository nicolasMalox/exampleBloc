import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/receive_money_personal_page/models/receive_money_personal_model.dart';
part 'receive_money_personal_event.dart';
part 'receive_money_personal_state.dart';

/// A bloc that manages the state of a ReceiveMoneyPersonal according to the event that is dispatched to it.
class ReceiveMoneyPersonalBloc
    extends Bloc<ReceiveMoneyPersonalEvent, ReceiveMoneyPersonalState> {
  ReceiveMoneyPersonalBloc(ReceiveMoneyPersonalState initialState)
      : super(initialState) {
    on<ReceiveMoneyPersonalInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReceiveMoneyPersonalInitialEvent event,
    Emitter<ReceiveMoneyPersonalState> emit,
  ) async {
    emit(state.copyWith(
        firstNameController: TextEditingController(),
        lastNameController: TextEditingController(),
        emailController: TextEditingController(),
        countryController: TextEditingController(),
        priceController: TextEditingController(),
        priceController1: TextEditingController(),
        writeashortController: TextEditingController()));
  }
}
