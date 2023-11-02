// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'profile1_item_model.dart';

/// This class defines the variables used in the [mobile_prepaid_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MobilePrepaidOneModel extends Equatable {
  MobilePrepaidOneModel({this.profile1ItemList = const []});

  List<Profile1ItemModel> profile1ItemList;

  MobilePrepaidOneModel copyWith({List<Profile1ItemModel>? profile1ItemList}) {
    return MobilePrepaidOneModel(
      profile1ItemList: profile1ItemList ?? this.profile1ItemList,
    );
  }

  @override
  List<Object?> get props => [profile1ItemList];
}
