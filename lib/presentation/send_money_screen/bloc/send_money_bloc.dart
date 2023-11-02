import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/profile_item_model.dart';
import 'package:nicolas_s_application1/presentation/send_money_screen/models/send_money_model.dart';
part 'send_money_event.dart';
part 'send_money_state.dart';

/// A bloc that manages the state of a SendMoney according to the event that is dispatched to it.
class SendMoneyBloc extends Bloc<SendMoneyEvent, SendMoneyState> {
  SendMoneyBloc(SendMoneyState initialState) : super(initialState) {
    on<SendMoneyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SendMoneyInitialEvent event,
    Emitter<SendMoneyState> emit,
  ) async {
    emit(state.copyWith(
        sendMoneyModelObj: state.sendMoneyModelObj
            ?.copyWith(profileItemList: fillProfileItemList())));
  }

  List<ProfileItemModel> fillProfileItemList() {
    return List.generate(5, (index) => ProfileItemModel());
  }
}
