import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/receive_money_request_tab_container_screen/models/receive_money_request_tab_container_model.dart';
part 'receive_money_request_tab_container_event.dart';
part 'receive_money_request_tab_container_state.dart';

/// A bloc that manages the state of a ReceiveMoneyRequestTabContainer according to the event that is dispatched to it.
class ReceiveMoneyRequestTabContainerBloc extends Bloc<
    ReceiveMoneyRequestTabContainerEvent,
    ReceiveMoneyRequestTabContainerState> {
  ReceiveMoneyRequestTabContainerBloc(
      ReceiveMoneyRequestTabContainerState initialState)
      : super(initialState) {
    on<ReceiveMoneyRequestTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReceiveMoneyRequestTabContainerInitialEvent event,
    Emitter<ReceiveMoneyRequestTabContainerState> emit,
  ) async {}
}
