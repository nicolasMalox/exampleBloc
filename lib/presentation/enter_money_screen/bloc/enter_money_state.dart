// ignore_for_file: must_be_immutable

part of 'enter_money_bloc.dart';

/// Represents the state of EnterMoney in the application.
class EnterMoneyState extends Equatable {
  EnterMoneyState({
    this.massageboxoneController,
    this.enterMoneyModelObj,
  });

  TextEditingController? massageboxoneController;

  EnterMoneyModel? enterMoneyModelObj;

  @override
  List<Object?> get props => [
        massageboxoneController,
        enterMoneyModelObj,
      ];
  EnterMoneyState copyWith({
    TextEditingController? massageboxoneController,
    EnterMoneyModel? enterMoneyModelObj,
  }) {
    return EnterMoneyState(
      massageboxoneController:
          massageboxoneController ?? this.massageboxoneController,
      enterMoneyModelObj: enterMoneyModelObj ?? this.enterMoneyModelObj,
    );
  }
}
