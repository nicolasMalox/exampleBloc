import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/bank_to_bank_one_screen/models/bank_to_bank_one_model.dart';
part 'bank_to_bank_one_event.dart';
part 'bank_to_bank_one_state.dart';

/// A bloc that manages the state of a BankToBankOne according to the event that is dispatched to it.
class BankToBankOneBloc extends Bloc<BankToBankOneEvent, BankToBankOneState> {
  BankToBankOneBloc(BankToBankOneState initialState) : super(initialState) {
    on<BankToBankOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BankToBankOneInitialEvent event,
    Emitter<BankToBankOneState> emit,
  ) async {}
}
