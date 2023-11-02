// ignore_for_file: must_be_immutable

part of 'pay_bill_bloc.dart';

/// Represents the state of PayBill in the application.
class PayBillState extends Equatable {
  PayBillState({this.payBillModelObj});

  PayBillModel? payBillModelObj;

  @override
  List<Object?> get props => [
        payBillModelObj,
      ];
  PayBillState copyWith({PayBillModel? payBillModelObj}) {
    return PayBillState(
      payBillModelObj: payBillModelObj ?? this.payBillModelObj,
    );
  }
}
