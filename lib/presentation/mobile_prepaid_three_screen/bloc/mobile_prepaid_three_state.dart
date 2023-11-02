// ignore_for_file: must_be_immutable

part of 'mobile_prepaid_three_bloc.dart';

/// Represents the state of MobilePrepaidThree in the application.
class MobilePrepaidThreeState extends Equatable {
  MobilePrepaidThreeState({
    this.otpController,
    this.mobilePrepaidThreeModelObj,
  });

  TextEditingController? otpController;

  MobilePrepaidThreeModel? mobilePrepaidThreeModelObj;

  @override
  List<Object?> get props => [
        otpController,
        mobilePrepaidThreeModelObj,
      ];
  MobilePrepaidThreeState copyWith({
    TextEditingController? otpController,
    MobilePrepaidThreeModel? mobilePrepaidThreeModelObj,
  }) {
    return MobilePrepaidThreeState(
      otpController: otpController ?? this.otpController,
      mobilePrepaidThreeModelObj:
          mobilePrepaidThreeModelObj ?? this.mobilePrepaidThreeModelObj,
    );
  }
}
