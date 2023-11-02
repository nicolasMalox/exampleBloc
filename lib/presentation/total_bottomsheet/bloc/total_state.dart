// ignore_for_file: must_be_immutable

part of 'total_bloc.dart';

/// Represents the state of Total in the application.
class TotalState extends Equatable {
  TotalState({this.totalModelObj});

  TotalModel? totalModelObj;

  @override
  List<Object?> get props => [
        totalModelObj,
      ];
  TotalState copyWith({TotalModel? totalModelObj}) {
    return TotalState(
      totalModelObj: totalModelObj ?? this.totalModelObj,
    );
  }
}
