// ignore_for_file: must_be_immutable

part of 'recharge_success_bloc.dart';

/// Represents the state of RechargeSuccess in the application.
class RechargeSuccessState extends Equatable {
  RechargeSuccessState({this.rechargeSuccessModelObj});

  RechargeSuccessModel? rechargeSuccessModelObj;

  @override
  List<Object?> get props => [
        rechargeSuccessModelObj,
      ];
  RechargeSuccessState copyWith(
      {RechargeSuccessModel? rechargeSuccessModelObj}) {
    return RechargeSuccessState(
      rechargeSuccessModelObj:
          rechargeSuccessModelObj ?? this.rechargeSuccessModelObj,
    );
  }
}
