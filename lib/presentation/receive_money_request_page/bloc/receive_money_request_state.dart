// ignore_for_file: must_be_immutable

part of 'receive_money_request_bloc.dart';

/// Represents the state of ReceiveMoneyRequest in the application.
class ReceiveMoneyRequestState extends Equatable {
  ReceiveMoneyRequestState({
    this.firstNameController,
    this.lastNameController,
    this.emailController,
    this.nameController,
    this.countryController,
    this.priceController,
    this.priceController1,
    this.writeashortController,
    this.receiveMoneyRequestModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? lastNameController;

  TextEditingController? emailController;

  TextEditingController? nameController;

  TextEditingController? countryController;

  TextEditingController? priceController;

  TextEditingController? priceController1;

  TextEditingController? writeashortController;

  ReceiveMoneyRequestModel? receiveMoneyRequestModelObj;

  @override
  List<Object?> get props => [
        firstNameController,
        lastNameController,
        emailController,
        nameController,
        countryController,
        priceController,
        priceController1,
        writeashortController,
        receiveMoneyRequestModelObj,
      ];
  ReceiveMoneyRequestState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? emailController,
    TextEditingController? nameController,
    TextEditingController? countryController,
    TextEditingController? priceController,
    TextEditingController? priceController1,
    TextEditingController? writeashortController,
    ReceiveMoneyRequestModel? receiveMoneyRequestModelObj,
  }) {
    return ReceiveMoneyRequestState(
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      emailController: emailController ?? this.emailController,
      nameController: nameController ?? this.nameController,
      countryController: countryController ?? this.countryController,
      priceController: priceController ?? this.priceController,
      priceController1: priceController1 ?? this.priceController1,
      writeashortController:
          writeashortController ?? this.writeashortController,
      receiveMoneyRequestModelObj:
          receiveMoneyRequestModelObj ?? this.receiveMoneyRequestModelObj,
    );
  }
}
