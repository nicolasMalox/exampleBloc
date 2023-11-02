// ignore_for_file: must_be_immutable

part of 'mobile_prepaid_one_bloc.dart';

/// Represents the state of MobilePrepaidOne in the application.
class MobilePrepaidOneState extends Equatable {
  MobilePrepaidOneState({
    this.nameController,
    this.mobilePrepaidOneModelObj,
  });

  TextEditingController? nameController;

  MobilePrepaidOneModel? mobilePrepaidOneModelObj;

  @override
  List<Object?> get props => [
        nameController,
        mobilePrepaidOneModelObj,
      ];
  MobilePrepaidOneState copyWith({
    TextEditingController? nameController,
    MobilePrepaidOneModel? mobilePrepaidOneModelObj,
  }) {
    return MobilePrepaidOneState(
      nameController: nameController ?? this.nameController,
      mobilePrepaidOneModelObj:
          mobilePrepaidOneModelObj ?? this.mobilePrepaidOneModelObj,
    );
  }
}
