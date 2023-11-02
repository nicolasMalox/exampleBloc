// ignore_for_file: must_be_immutable

part of 'money_sent_success_bloc.dart';

/// Represents the state of MoneySentSuccess in the application.
class MoneySentSuccessState extends Equatable {
  MoneySentSuccessState({this.moneySentSuccessModelObj});

  MoneySentSuccessModel? moneySentSuccessModelObj;

  @override
  List<Object?> get props => [
        moneySentSuccessModelObj,
      ];
  MoneySentSuccessState copyWith(
      {MoneySentSuccessModel? moneySentSuccessModelObj}) {
    return MoneySentSuccessState(
      moneySentSuccessModelObj:
          moneySentSuccessModelObj ?? this.moneySentSuccessModelObj,
    );
  }
}
