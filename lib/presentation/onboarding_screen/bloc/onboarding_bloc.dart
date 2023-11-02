import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/onboarding_screen/models/onboarding_model.dart';
part 'onboarding_event.dart';
part 'onboarding_state.dart';

/// A bloc that manages the state of a Onboarding according to the event that is dispatched to it.
class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc(OnboardingState initialState) : super(initialState) {
    on<OnboardingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingInitialEvent event,
    Emitter<OnboardingState> emit,
  ) async {}
}
