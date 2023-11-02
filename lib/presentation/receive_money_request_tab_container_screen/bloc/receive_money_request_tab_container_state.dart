// ignore_for_file: must_be_immutable

part of 'receive_money_request_tab_container_bloc.dart';

/// Represents the state of ReceiveMoneyRequestTabContainer in the application.
class ReceiveMoneyRequestTabContainerState extends Equatable {
  ReceiveMoneyRequestTabContainerState(
      {this.receiveMoneyRequestTabContainerModelObj});

  ReceiveMoneyRequestTabContainerModel? receiveMoneyRequestTabContainerModelObj;

  @override
  List<Object?> get props => [
        receiveMoneyRequestTabContainerModelObj,
      ];
  ReceiveMoneyRequestTabContainerState copyWith(
      {ReceiveMoneyRequestTabContainerModel?
          receiveMoneyRequestTabContainerModelObj}) {
    return ReceiveMoneyRequestTabContainerState(
      receiveMoneyRequestTabContainerModelObj:
          receiveMoneyRequestTabContainerModelObj ??
              this.receiveMoneyRequestTabContainerModelObj,
    );
  }
}
