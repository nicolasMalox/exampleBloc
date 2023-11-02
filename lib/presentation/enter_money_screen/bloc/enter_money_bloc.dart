import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/enter_money_screen/models/enter_money_model.dart';
part 'enter_money_event.dart';
part 'enter_money_state.dart';

/// A bloc that manages the state of a EnterMoney according to the event that is dispatched to it.
class EnterMoneyBloc extends Bloc<EnterMoneyEvent, EnterMoneyState> {
  EnterMoneyBloc(EnterMoneyState initialState) : super(initialState) {
    on<EnterMoneyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EnterMoneyInitialEvent event,
    Emitter<EnterMoneyState> emit,
  ) async {
    emit(state.copyWith(massageboxoneController: TextEditingController()));
  }
}
