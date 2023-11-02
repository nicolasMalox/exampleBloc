import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/pay_bill_item_model.dart';
import 'package:nicolas_s_application1/presentation/pay_bill_screen/models/pay_bill_model.dart';
part 'pay_bill_event.dart';
part 'pay_bill_state.dart';

/// A bloc that manages the state of a PayBill according to the event that is dispatched to it.
class PayBillBloc extends Bloc<PayBillEvent, PayBillState> {
  PayBillBloc(PayBillState initialState) : super(initialState) {
    on<PayBillInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PayBillInitialEvent event,
    Emitter<PayBillState> emit,
  ) async {
    emit(state.copyWith(
        payBillModelObj: state.payBillModelObj
            ?.copyWith(payBillItemList: fillPayBillItemList())));
  }

  List<PayBillItemModel> fillPayBillItemList() {
    return List.generate(4, (index) => PayBillItemModel());
  }
}
