import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/bank_to_bank_two_screen/models/bank_to_bank_two_model.dart';
part 'bank_to_bank_two_event.dart';
part 'bank_to_bank_two_state.dart';

/// A bloc that manages the state of a BankToBankTwo according to the event that is dispatched to it.
class BankToBankTwoBloc extends Bloc<BankToBankTwoEvent, BankToBankTwoState> {
  BankToBankTwoBloc(BankToBankTwoState initialState) : super(initialState) {
    on<BankToBankTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BankToBankTwoInitialEvent event,
    Emitter<BankToBankTwoState> emit,
  ) async {
    emit(state.copyWith(priceController: TextEditingController()));
  }
}
