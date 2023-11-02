// ignore_for_file: must_be_immutable

part of 'bank_to_bank_three_bloc.dart';

/// Represents the state of BankToBankThree in the application.
class BankToBankThreeState extends Equatable {
  BankToBankThreeState({
    this.otpController,
    this.bankToBankThreeModelObj,
  });

  TextEditingController? otpController;

  BankToBankThreeModel? bankToBankThreeModelObj;

  @override
  List<Object?> get props => [
        otpController,
        bankToBankThreeModelObj,
      ];
  BankToBankThreeState copyWith({
    TextEditingController? otpController,
    BankToBankThreeModel? bankToBankThreeModelObj,
  }) {
    return BankToBankThreeState(
      otpController: otpController ?? this.otpController,
      bankToBankThreeModelObj:
          bankToBankThreeModelObj ?? this.bankToBankThreeModelObj,
    );
  }
}
