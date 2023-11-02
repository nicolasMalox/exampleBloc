// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'card_details_item_model.dart';

/// This class defines the variables used in the [card_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CardDetailsModel extends Equatable {
  CardDetailsModel({this.cardDetailsItemList = const []});

  List<CardDetailsItemModel> cardDetailsItemList;

  CardDetailsModel copyWith({List<CardDetailsItemModel>? cardDetailsItemList}) {
    return CardDetailsModel(
      cardDetailsItemList: cardDetailsItemList ?? this.cardDetailsItemList,
    );
  }

  @override
  List<Object?> get props => [cardDetailsItemList];
}
