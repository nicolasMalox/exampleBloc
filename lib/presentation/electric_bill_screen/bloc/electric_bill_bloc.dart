import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/electric_bill_screen/models/electric_bill_model.dart';
part 'electric_bill_event.dart';
part 'electric_bill_state.dart';

/// A bloc that manages the state of a ElectricBill according to the event that is dispatched to it.
class ElectricBillBloc extends Bloc<ElectricBillEvent, ElectricBillState> {
  ElectricBillBloc(ElectricBillState initialState) : super(initialState) {
    on<ElectricBillInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ElectricBillInitialEvent event,
    Emitter<ElectricBillState> emit,
  ) async {
    emit(state.copyWith(
        nameController: TextEditingController(),
        addressController: TextEditingController(),
        phoneController: TextEditingController(),
        group18250Controller: TextEditingController(),
        dateController: TextEditingController(),
        dateController1: TextEditingController(),
        otpController: TextEditingController()));
  }
}
