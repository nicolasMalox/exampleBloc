import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/notifications_screen/models/notifications_model.dart';
part 'notifications_event.dart';
part 'notifications_state.dart';

/// A bloc that manages the state of a Notifications according to the event that is dispatched to it.
class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  NotificationsBloc(NotificationsState initialState) : super(initialState) {
    on<NotificationsInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeSwitch1Event>(_changeSwitch1);
    on<ChangeSwitch2Event>(_changeSwitch2);
    on<ChangeSwitch3Event>(_changeSwitch3);
    on<ChangeSwitch4Event>(_changeSwitch4);
    on<ChangeSwitch5Event>(_changeSwitch5);
    on<ChangeSwitch6Event>(_changeSwitch6);
    on<ChangeSwitch7Event>(_changeSwitch7);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<NotificationsState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch: event.value));
  }

  _changeSwitch1(
    ChangeSwitch1Event event,
    Emitter<NotificationsState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch1: event.value));
  }

  _changeSwitch2(
    ChangeSwitch2Event event,
    Emitter<NotificationsState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch2: event.value));
  }

  _changeSwitch3(
    ChangeSwitch3Event event,
    Emitter<NotificationsState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch3: event.value));
  }

  _changeSwitch4(
    ChangeSwitch4Event event,
    Emitter<NotificationsState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch4: event.value));
  }

  _changeSwitch5(
    ChangeSwitch5Event event,
    Emitter<NotificationsState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch5: event.value));
  }

  _changeSwitch6(
    ChangeSwitch6Event event,
    Emitter<NotificationsState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch6: event.value));
  }

  _changeSwitch7(
    ChangeSwitch7Event event,
    Emitter<NotificationsState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch7: event.value));
  }

  _onInitialize(
    NotificationsInitialEvent event,
    Emitter<NotificationsState> emit,
  ) async {
    emit(state.copyWith(
        isSelectedSwitch: false,
        isSelectedSwitch1: false,
        isSelectedSwitch2: false,
        isSelectedSwitch3: false,
        isSelectedSwitch4: false,
        isSelectedSwitch5: false,
        isSelectedSwitch6: false,
        isSelectedSwitch7: false));
  }
}
