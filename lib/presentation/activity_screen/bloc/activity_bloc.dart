import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/activity_screen/models/activity_model.dart';
part 'activity_event.dart';
part 'activity_state.dart';

/// A bloc that manages the state of a Activity according to the event that is dispatched to it.
class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  ActivityBloc(ActivityState initialState) : super(initialState) {
    on<ActivityInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ActivityInitialEvent event,
    Emitter<ActivityState> emit,
  ) async {}
}
