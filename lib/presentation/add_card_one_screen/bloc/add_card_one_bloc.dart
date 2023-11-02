import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/add_card_one_screen/models/add_card_one_model.dart';
part 'add_card_one_event.dart';
part 'add_card_one_state.dart';

/// A bloc that manages the state of a AddCardOne according to the event that is dispatched to it.
class AddCardOneBloc extends Bloc<AddCardOneEvent, AddCardOneState> {
  AddCardOneBloc(AddCardOneState initialState) : super(initialState) {
    on<AddCardOneInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<AddCardOneState> emit,
  ) {
    emit(state.copyWith(savemycarddetai: event.value));
  }

  _onInitialize(
    AddCardOneInitialEvent event,
    Emitter<AddCardOneState> emit,
  ) async {
    emit(state.copyWith(
        nameController: TextEditingController(),
        cardNumberController: TextEditingController(),
        dateController: TextEditingController(),
        cvvController: TextEditingController(),
        savemycarddetai: false));
  }
}
