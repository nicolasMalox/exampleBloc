// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'history_item_model.dart';

/// This class defines the variables used in the [history_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HistoryModel extends Equatable {
  HistoryModel({this.historyItemList = const []});

  List<HistoryItemModel> historyItemList;

  HistoryModel copyWith({List<HistoryItemModel>? historyItemList}) {
    return HistoryModel(
      historyItemList: historyItemList ?? this.historyItemList,
    );
  }

  @override
  List<Object?> get props => [historyItemList];
}
