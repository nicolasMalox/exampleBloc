// ignore_for_file: must_be_immutable

part of 'send_money_bloc.dart';

/// Represents the state of SendMoney in the application.
class SendMoneyState extends Equatable {
  SendMoneyState({this.sendMoneyModelObj});

  SendMoneyModel? sendMoneyModelObj;

  @override
  List<Object?> get props => [
        sendMoneyModelObj,
      ];
  SendMoneyState copyWith({SendMoneyModel? sendMoneyModelObj}) {
    return SendMoneyState(
      sendMoneyModelObj: sendMoneyModelObj ?? this.sendMoneyModelObj,
    );
  }
}
