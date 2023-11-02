// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'pay_bill_item_model.dart';

/// This class defines the variables used in the [pay_bill_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PayBillModel extends Equatable {
  PayBillModel({this.payBillItemList = const []});

  List<PayBillItemModel> payBillItemList;

  PayBillModel copyWith({List<PayBillItemModel>? payBillItemList}) {
    return PayBillModel(
      payBillItemList: payBillItemList ?? this.payBillItemList,
    );
  }

  @override
  List<Object?> get props => [payBillItemList];
}
