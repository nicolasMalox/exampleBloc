// ignore_for_file: must_be_immutable

part of 'cards_bloc.dart';

/// Represents the state of Cards in the application.
class CardsState extends Equatable {
  CardsState({this.cardsModelObj});

  CardsModel? cardsModelObj;

  @override
  List<Object?> get props => [
        cardsModelObj,
      ];
  CardsState copyWith({CardsModel? cardsModelObj}) {
    return CardsState(
      cardsModelObj: cardsModelObj ?? this.cardsModelObj,
    );
  }
}
