import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/request_sent_screen/models/request_sent_model.dart';
part 'request_sent_event.dart';
part 'request_sent_state.dart';

/// A bloc that manages the state of a RequestSent according to the event that is dispatched to it.
class RequestSentBloc extends Bloc<RequestSentEvent, RequestSentState> {
  RequestSentBloc(RequestSentState initialState) : super(initialState) {
    on<RequestSentInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RequestSentInitialEvent event,
    Emitter<RequestSentState> emit,
  ) async {}
}
