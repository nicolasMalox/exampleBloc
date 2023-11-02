// ignore_for_file: must_be_immutable

part of 'electric_bill_bloc.dart';

/// Represents the state of ElectricBill in the application.
class ElectricBillState extends Equatable {
  ElectricBillState({
    this.nameController,
    this.addressController,
    this.phoneController,
    this.group18250Controller,
    this.dateController,
    this.dateController1,
    this.otpController,
    this.electricBillModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? addressController;

  TextEditingController? phoneController;

  TextEditingController? group18250Controller;

  TextEditingController? dateController;

  TextEditingController? dateController1;

  TextEditingController? otpController;

  ElectricBillModel? electricBillModelObj;

  @override
  List<Object?> get props => [
        nameController,
        addressController,
        phoneController,
        group18250Controller,
        dateController,
        dateController1,
        otpController,
        electricBillModelObj,
      ];
  ElectricBillState copyWith({
    TextEditingController? nameController,
    TextEditingController? addressController,
    TextEditingController? phoneController,
    TextEditingController? group18250Controller,
    TextEditingController? dateController,
    TextEditingController? dateController1,
    TextEditingController? otpController,
    ElectricBillModel? electricBillModelObj,
  }) {
    return ElectricBillState(
      nameController: nameController ?? this.nameController,
      addressController: addressController ?? this.addressController,
      phoneController: phoneController ?? this.phoneController,
      group18250Controller: group18250Controller ?? this.group18250Controller,
      dateController: dateController ?? this.dateController,
      dateController1: dateController1 ?? this.dateController1,
      otpController: otpController ?? this.otpController,
      electricBillModelObj: electricBillModelObj ?? this.electricBillModelObj,
    );
  }
}
