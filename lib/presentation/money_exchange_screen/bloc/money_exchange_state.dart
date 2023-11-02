// ignore_for_file: must_be_immutable

part of 'money_exchange_bloc.dart';

/// Represents the state of MoneyExchange in the application.
class MoneyExchangeState extends Equatable {
  MoneyExchangeState({
    this.priceController,
    this.priceController1,
    this.moneyExchangeModelObj,
  });

  TextEditingController? priceController;

  TextEditingController? priceController1;

  MoneyExchangeModel? moneyExchangeModelObj;

  @override
  List<Object?> get props => [
        priceController,
        priceController1,
        moneyExchangeModelObj,
      ];
  MoneyExchangeState copyWith({
    TextEditingController? priceController,
    TextEditingController? priceController1,
    MoneyExchangeModel? moneyExchangeModelObj,
  }) {
    return MoneyExchangeState(
      priceController: priceController ?? this.priceController,
      priceController1: priceController1 ?? this.priceController1,
      moneyExchangeModelObj:
          moneyExchangeModelObj ?? this.moneyExchangeModelObj,
    );
  }
}
