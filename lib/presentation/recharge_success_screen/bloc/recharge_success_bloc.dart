import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/recharge_success_screen/models/recharge_success_model.dart';
part 'recharge_success_event.dart';
part 'recharge_success_state.dart';

/// A bloc that manages the state of a RechargeSuccess according to the event that is dispatched to it.
class RechargeSuccessBloc
    extends Bloc<RechargeSuccessEvent, RechargeSuccessState> {
  RechargeSuccessBloc(RechargeSuccessState initialState) : super(initialState) {
    on<RechargeSuccessInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RechargeSuccessInitialEvent event,
    Emitter<RechargeSuccessState> emit,
  ) async {}
}
