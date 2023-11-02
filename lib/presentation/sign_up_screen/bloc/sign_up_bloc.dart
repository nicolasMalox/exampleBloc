import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:nicolas_s_application1/data/models/registerDeviceAuth/post_register_device_auth_resp.dart';
import 'package:nicolas_s_application1/data/models/registerDeviceAuth/post_register_device_auth_req.dart';
import 'dart:async';
import 'package:nicolas_s_application1/data/repository/repository.dart';
import 'package:nicolas_s_application1/core/constants/user.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

/// A bloc that manages the state of a SignUp according to the event that is dispatched to it.
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(SignUpState initialState) : super(initialState) {
    on<SignUpInitialEvent>(_onInitialize);
    on<CreateRegisterEvent>(_callRegisterDeviceAuth);
  }

  final _repository = Repository();

  var postRegisterDeviceAuthResp = PostRegisterDeviceAuthResp();

  _onInitialize(
    SignUpInitialEvent event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(
        phoneController: TextEditingController(),
        passwordController: TextEditingController(),
        confirmpasswordController: TextEditingController()));
  }

  /// Calls [https://nodedemo.dhiwise.co/device/auth/register] with the provided event and emits the state.
  ///
  /// The [CreateRegisterEvent] parameter is used for handling event data
  /// The [emit] parameter is used for emitting the state
  ///
  /// Throws an error if an error occurs during the API call process.
  FutureOr<void> _callRegisterDeviceAuth(
    CreateRegisterEvent event,
    Emitter<SignUpState> emit,
  ) async {
    var postRegisterDeviceAuthReq = PostRegisterDeviceAuthReq(
      username: state.phoneController?.text ?? '',
      password: state.passwordController?.text ?? '',
      email: state.phoneController?.text ?? '',
      name: state.phoneController?.text ?? '',
      role: User.role,
    );
    await _repository.registerDeviceAuth(
      headers: {
        'Content-Type': 'application/json',
      },
      requestData: postRegisterDeviceAuthReq.toJson(),
    ).then((value) async {
      postRegisterDeviceAuthResp = value;
      _onRegisterDeviceAuthSuccess(value, emit);
      event.onCreateRegisterEventSuccess?.call();
    }).onError((error, stackTrace) {
      //implement error call
      _onRegisterDeviceAuthError();
      event.onCreateRegisterEventError?.call();
    });
  }

  void _onRegisterDeviceAuthSuccess(
    PostRegisterDeviceAuthResp resp,
    Emitter<SignUpState> emit,
  ) {
    PrefUtils().setId(resp.data?.id ?? '');
    emit(
      state.copyWith(
        signUpModelObj: state.signUpModelObj?.copyWith(),
      ),
    );
  }

  void _onRegisterDeviceAuthError() {
    //implement error method body...
  }
}
