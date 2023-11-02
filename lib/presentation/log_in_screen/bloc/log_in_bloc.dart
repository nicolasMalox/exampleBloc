import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/log_in_screen/models/log_in_model.dart';
import 'package:nicolas_s_application1/data/models/loginDeviceAuth/post_login_device_auth_resp.dart';
import 'package:nicolas_s_application1/data/models/loginDeviceAuth/post_login_device_auth_req.dart';
import 'dart:async';
import 'package:nicolas_s_application1/data/repository/repository.dart';
part 'log_in_event.dart';
part 'log_in_state.dart';

/// A bloc that manages the state of a LogIn according to the event that is dispatched to it.
class LogInBloc extends Bloc<LogInEvent, LogInState> {
  LogInBloc(LogInState initialState) : super(initialState) {
    on<LogInInitialEvent>(_onInitialize);
    on<CreateLoginEvent>(_callLoginDeviceAuth);
  }

  final _repository = Repository();

  var postLoginDeviceAuthResp = PostLoginDeviceAuthResp();

  _onInitialize(
    LogInInitialEvent event,
    Emitter<LogInState> emit,
  ) async {
    emit(state.copyWith(
        phoneController: TextEditingController(),
        passwordController: TextEditingController()));
  }

  /// Calls [https://nodedemo.dhiwise.co/device/auth/login] with the provided event and emits the state.
  ///
  /// The [CreateLoginEvent] parameter is used for handling event data
  /// The [emit] parameter is used for emitting the state
  ///
  /// Throws an error if an error occurs during the API call process.
  FutureOr<void> _callLoginDeviceAuth(
    CreateLoginEvent event,
    Emitter<LogInState> emit,
  ) async {
    var postLoginDeviceAuthReq = PostLoginDeviceAuthReq(
      username: state.phoneController?.text ?? '',
      password: state.passwordController?.text ?? '',
    );
    await _repository.loginDeviceAuth(
      headers: {
        'Content-Type': 'application/json',
      },
      requestData: postLoginDeviceAuthReq.toJson(),
    ).then((value) async {
      postLoginDeviceAuthResp = value;
      _onLoginDeviceAuthSuccess(value, emit);
      event.onCreateLoginEventSuccess?.call();
    }).onError((error, stackTrace) {
      //implement error call
      _onLoginDeviceAuthError();
      event.onCreateLoginEventError?.call();
    });
  }

  void _onLoginDeviceAuthSuccess(
    PostLoginDeviceAuthResp resp,
    Emitter<LogInState> emit,
  ) {
    PrefUtils().setToken(resp.data?.token ?? '');
    emit(
      state.copyWith(
        logInModelObj: state.logInModelObj?.copyWith(),
      ),
    );
  }

  void _onLoginDeviceAuthError() {
    //implement error method body...
  }
}
