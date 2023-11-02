// ignore_for_file: must_be_immutable

part of 'notifications_bloc.dart';

/// Represents the state of Notifications in the application.
class NotificationsState extends Equatable {
  NotificationsState({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.isSelectedSwitch2 = false,
    this.isSelectedSwitch3 = false,
    this.isSelectedSwitch4 = false,
    this.isSelectedSwitch5 = false,
    this.isSelectedSwitch6 = false,
    this.isSelectedSwitch7 = false,
    this.notificationsModelObj,
  });

  NotificationsModel? notificationsModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  bool isSelectedSwitch2;

  bool isSelectedSwitch3;

  bool isSelectedSwitch4;

  bool isSelectedSwitch5;

  bool isSelectedSwitch6;

  bool isSelectedSwitch7;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        isSelectedSwitch2,
        isSelectedSwitch3,
        isSelectedSwitch4,
        isSelectedSwitch5,
        isSelectedSwitch6,
        isSelectedSwitch7,
        notificationsModelObj,
      ];
  NotificationsState copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    bool? isSelectedSwitch2,
    bool? isSelectedSwitch3,
    bool? isSelectedSwitch4,
    bool? isSelectedSwitch5,
    bool? isSelectedSwitch6,
    bool? isSelectedSwitch7,
    NotificationsModel? notificationsModelObj,
  }) {
    return NotificationsState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      isSelectedSwitch2: isSelectedSwitch2 ?? this.isSelectedSwitch2,
      isSelectedSwitch3: isSelectedSwitch3 ?? this.isSelectedSwitch3,
      isSelectedSwitch4: isSelectedSwitch4 ?? this.isSelectedSwitch4,
      isSelectedSwitch5: isSelectedSwitch5 ?? this.isSelectedSwitch5,
      isSelectedSwitch6: isSelectedSwitch6 ?? this.isSelectedSwitch6,
      isSelectedSwitch7: isSelectedSwitch7 ?? this.isSelectedSwitch7,
      notificationsModelObj:
          notificationsModelObj ?? this.notificationsModelObj,
    );
  }
}
