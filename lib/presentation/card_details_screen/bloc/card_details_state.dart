// ignore_for_file: must_be_immutable

part of 'card_details_bloc.dart';

/// Represents the state of CardDetails in the application.
class CardDetailsState extends Equatable {
  CardDetailsState({this.cardDetailsModelObj});

  CardDetailsModel? cardDetailsModelObj;

  @override
  List<Object?> get props => [
        cardDetailsModelObj,
      ];
  CardDetailsState copyWith({CardDetailsModel? cardDetailsModelObj}) {
    return CardDetailsState(
      cardDetailsModelObj: cardDetailsModelObj ?? this.cardDetailsModelObj,
    );
  }
}
