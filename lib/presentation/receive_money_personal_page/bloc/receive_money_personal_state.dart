// ignore_for_file: must_be_immutable

part of 'receive_money_personal_bloc.dart';

/// Represents the state of ReceiveMoneyPersonal in the application.
class ReceiveMoneyPersonalState extends Equatable {
  ReceiveMoneyPersonalState({
    this.firstNameController,
    this.lastNameController,
    this.emailController,
    this.countryController,
    this.priceController,
    this.priceController1,
    this.writeashortController,
    this.receiveMoneyPersonalModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? lastNameController;

  TextEditingController? emailController;

  TextEditingController? countryController;

  TextEditingController? priceController;

  TextEditingController? priceController1;

  TextEditingController? writeashortController;

  ReceiveMoneyPersonalModel? receiveMoneyPersonalModelObj;

  @override
  List<Object?> get props => [
        firstNameController,
        lastNameController,
        emailController,
        countryController,
        priceController,
        priceController1,
        writeashortController,
        receiveMoneyPersonalModelObj,
      ];
  ReceiveMoneyPersonalState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? emailController,
    TextEditingController? countryController,
    TextEditingController? priceController,
    TextEditingController? priceController1,
    TextEditingController? writeashortController,
    ReceiveMoneyPersonalModel? receiveMoneyPersonalModelObj,
  }) {
    return ReceiveMoneyPersonalState(
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      emailController: emailController ?? this.emailController,
      countryController: countryController ?? this.countryController,
      priceController: priceController ?? this.priceController,
      priceController1: priceController1 ?? this.priceController1,
      writeashortController:
          writeashortController ?? this.writeashortController,
      receiveMoneyPersonalModelObj:
          receiveMoneyPersonalModelObj ?? this.receiveMoneyPersonalModelObj,
    );
  }
}
