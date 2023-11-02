// ignore_for_file: must_be_immutable

part of 'bank_to_bank_two_bloc.dart';

/// Represents the state of BankToBankTwo in the application.
class BankToBankTwoState extends Equatable {
  BankToBankTwoState({
    this.priceController,
    this.bankToBankTwoModelObj,
  });

  TextEditingController? priceController;

  BankToBankTwoModel? bankToBankTwoModelObj;

  @override
  List<Object?> get props => [
        priceController,
        bankToBankTwoModelObj,
      ];
  BankToBankTwoState copyWith({
    TextEditingController? priceController,
    BankToBankTwoModel? bankToBankTwoModelObj,
  }) {
    return BankToBankTwoState(
      priceController: priceController ?? this.priceController,
      bankToBankTwoModelObj:
          bankToBankTwoModelObj ?? this.bankToBankTwoModelObj,
    );
  }
}
