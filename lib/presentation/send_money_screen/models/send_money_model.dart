// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'profile_item_model.dart';

/// This class defines the variables used in the [send_money_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SendMoneyModel extends Equatable {
  SendMoneyModel({this.profileItemList = const []});

  List<ProfileItemModel> profileItemList;

  SendMoneyModel copyWith({List<ProfileItemModel>? profileItemList}) {
    return SendMoneyModel(
      profileItemList: profileItemList ?? this.profileItemList,
    );
  }

  @override
  List<Object?> get props => [profileItemList];
}
