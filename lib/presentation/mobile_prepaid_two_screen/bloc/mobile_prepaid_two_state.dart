// ignore_for_file: must_be_immutable

part of 'mobile_prepaid_two_bloc.dart';

/// Represents the state of MobilePrepaidTwo in the application.
class MobilePrepaidTwoState extends Equatable {
  MobilePrepaidTwoState({
    this.priceController,
    this.mobilePrepaidTwoModelObj,
  });

  TextEditingController? priceController;

  MobilePrepaidTwoModel? mobilePrepaidTwoModelObj;

  @override
  List<Object?> get props => [
        priceController,
        mobilePrepaidTwoModelObj,
      ];
  MobilePrepaidTwoState copyWith({
    TextEditingController? priceController,
    MobilePrepaidTwoModel? mobilePrepaidTwoModelObj,
  }) {
    return MobilePrepaidTwoState(
      priceController: priceController ?? this.priceController,
      mobilePrepaidTwoModelObj:
          mobilePrepaidTwoModelObj ?? this.mobilePrepaidTwoModelObj,
    );
  }
}
