// ignore_for_file: must_be_immutable

part of 'bil_payment_success_bloc.dart';

/// Represents the state of BilPaymentSuccess in the application.
class BilPaymentSuccessState extends Equatable {
  BilPaymentSuccessState({this.bilPaymentSuccessModelObj});

  BilPaymentSuccessModel? bilPaymentSuccessModelObj;

  @override
  List<Object?> get props => [
        bilPaymentSuccessModelObj,
      ];
  BilPaymentSuccessState copyWith(
      {BilPaymentSuccessModel? bilPaymentSuccessModelObj}) {
    return BilPaymentSuccessState(
      bilPaymentSuccessModelObj:
          bilPaymentSuccessModelObj ?? this.bilPaymentSuccessModelObj,
    );
  }
}
