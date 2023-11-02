// ignore_for_file: must_be_immutable

part of 'activity_bloc.dart';

/// Represents the state of Activity in the application.
class ActivityState extends Equatable {
  ActivityState({this.activityModelObj});

  ActivityModel? activityModelObj;

  @override
  List<Object?> get props => [
        activityModelObj,
      ];
  ActivityState copyWith({ActivityModel? activityModelObj}) {
    return ActivityState(
      activityModelObj: activityModelObj ?? this.activityModelObj,
    );
  }
}
