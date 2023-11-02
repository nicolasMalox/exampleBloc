// ignore_for_file: must_be_immutable

part of 'home_container_bloc.dart';

/// Represents the state of HomeContainer in the application.
class HomeContainerState extends Equatable {
  HomeContainerState({
    this.id,
    this.homeContainerModelObj,
  });

  HomeContainerModel? homeContainerModelObj;

  var id;

  @override
  List<Object?> get props => [
        id,
        homeContainerModelObj,
      ];
  HomeContainerState copyWith({
    var id,
    HomeContainerModel? homeContainerModelObj,
  }) {
    return HomeContainerState(
      id: id ?? this.id,
      homeContainerModelObj:
          homeContainerModelObj ?? this.homeContainerModelObj,
    );
  }
}
