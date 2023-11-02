// ignore_for_file: must_be_immutable

part of 'request_sent_bloc.dart';

/// Represents the state of RequestSent in the application.
class RequestSentState extends Equatable {
  RequestSentState({this.requestSentModelObj});

  RequestSentModel? requestSentModelObj;

  @override
  List<Object?> get props => [
        requestSentModelObj,
      ];
  RequestSentState copyWith({RequestSentModel? requestSentModelObj}) {
    return RequestSentState(
      requestSentModelObj: requestSentModelObj ?? this.requestSentModelObj,
    );
  }
}
