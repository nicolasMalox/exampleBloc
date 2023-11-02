import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/total_bottomsheet/models/total_model.dart';
part 'total_event.dart';
part 'total_state.dart';

/// A bloc that manages the state of a Total according to the event that is dispatched to it.
class TotalBloc extends Bloc<TotalEvent, TotalState> {
  TotalBloc(TotalState initialState) : super(initialState) {
    on<TotalInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TotalInitialEvent event,
    Emitter<TotalState> emit,
  ) async {}
}
