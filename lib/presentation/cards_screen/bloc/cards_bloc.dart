import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/cards_screen/models/cards_model.dart';
part 'cards_event.dart';
part 'cards_state.dart';

/// A bloc that manages the state of a Cards according to the event that is dispatched to it.
class CardsBloc extends Bloc<CardsEvent, CardsState> {
  CardsBloc(CardsState initialState) : super(initialState) {
    on<CardsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CardsInitialEvent event,
    Emitter<CardsState> emit,
  ) async {}
}
