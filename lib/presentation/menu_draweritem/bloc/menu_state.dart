// ignore_for_file: must_be_immutable

part of 'menu_bloc.dart';

/// Represents the state of Menu in the application.
class MenuState extends Equatable {
  MenuState({this.menuModelObj});

  MenuModel? menuModelObj;

  @override
  List<Object?> get props => [
        menuModelObj,
      ];
  MenuState copyWith({MenuModel? menuModelObj}) {
    return MenuState(
      menuModelObj: menuModelObj ?? this.menuModelObj,
    );
  }
}
