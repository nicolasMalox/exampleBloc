import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/mobile_prepaid_two_screen/models/mobile_prepaid_two_model.dart';
part 'mobile_prepaid_two_event.dart';
part 'mobile_prepaid_two_state.dart';

/// A bloc that manages the state of a MobilePrepaidTwo according to the event that is dispatched to it.
class MobilePrepaidTwoBloc
    extends Bloc<MobilePrepaidTwoEvent, MobilePrepaidTwoState> {
  MobilePrepaidTwoBloc(MobilePrepaidTwoState initialState)
      : super(initialState) {
    on<MobilePrepaidTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MobilePrepaidTwoInitialEvent event,
    Emitter<MobilePrepaidTwoState> emit,
  ) async {
    emit(state.copyWith(priceController: TextEditingController()));
  }
}
