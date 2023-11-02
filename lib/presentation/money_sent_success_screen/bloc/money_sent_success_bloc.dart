import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/money_sent_success_screen/models/money_sent_success_model.dart';
part 'money_sent_success_event.dart';
part 'money_sent_success_state.dart';

/// A bloc that manages the state of a MoneySentSuccess according to the event that is dispatched to it.
class MoneySentSuccessBloc
    extends Bloc<MoneySentSuccessEvent, MoneySentSuccessState> {
  MoneySentSuccessBloc(MoneySentSuccessState initialState)
      : super(initialState) {
    on<MoneySentSuccessInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MoneySentSuccessInitialEvent event,
    Emitter<MoneySentSuccessState> emit,
  ) async {}
}
