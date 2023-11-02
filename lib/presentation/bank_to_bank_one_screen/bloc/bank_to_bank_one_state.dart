// ignore_for_file: must_be_immutable

part of 'bank_to_bank_one_bloc.dart';

/// Represents the state of BankToBankOne in the application.
class BankToBankOneState extends Equatable {
  BankToBankOneState({this.bankToBankOneModelObj});

  BankToBankOneModel? bankToBankOneModelObj;

  @override
  List<Object?> get props => [
        bankToBankOneModelObj,
      ];
  BankToBankOneState copyWith({BankToBankOneModel? bankToBankOneModelObj}) {
    return BankToBankOneState(
      bankToBankOneModelObj:
          bankToBankOneModelObj ?? this.bankToBankOneModelObj,
    );
  }
}
