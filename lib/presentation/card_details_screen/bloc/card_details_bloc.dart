import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/card_details_item_model.dart';
import 'package:nicolas_s_application1/presentation/card_details_screen/models/card_details_model.dart';
part 'card_details_event.dart';
part 'card_details_state.dart';

/// A bloc that manages the state of a CardDetails according to the event that is dispatched to it.
class CardDetailsBloc extends Bloc<CardDetailsEvent, CardDetailsState> {
  CardDetailsBloc(CardDetailsState initialState) : super(initialState) {
    on<CardDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CardDetailsInitialEvent event,
    Emitter<CardDetailsState> emit,
  ) async {
    emit(state.copyWith(
        cardDetailsModelObj: state.cardDetailsModelObj?.copyWith(
      cardDetailsItemList: fillCardDetailsItemList(),
    )));
  }

  List<CardDetailsItemModel> fillCardDetailsItemList() {
    return List.generate(5, (index) => CardDetailsItemModel());
  }
}
