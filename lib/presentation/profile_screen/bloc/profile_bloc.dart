import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/profile_screen/models/profile_model.dart';
import 'package:nicolas_s_application1/data/models/me/get_me_resp.dart';
import 'dart:async';
import 'package:nicolas_s_application1/data/repository/repository.dart';
part 'profile_event.dart';
part 'profile_state.dart';

/// A bloc that manages the state of a Profile according to the event that is dispatched to it.
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(ProfileState initialState) : super(initialState) {
    on<ProfileInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<FetchMeEvent>(_callFetchMe);
  }

  final _repository = Repository();

  var getMeResp = GetMeResp();

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<ProfileState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch: event.value));
  }

  /// Calls the https://nodedemo.dhiwise.co/device/api/v1/user/me API and triggers a [FetchMeEvent] event on the [ProfileBloc] bloc.
  ///
  /// The [BuildContext] parameter represents current [BuildContext]
  _onInitialize(
    ProfileInitialEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(isSelectedSwitch: false));
    add(
      FetchMeEvent(),
    );
  }

  /// Calls [https://nodedemo.dhiwise.co/device/api/v1/user/me] with the provided event and emits the state.
  ///
  /// The [FetchMeEvent] parameter is used for handling event data
  /// The [emit] parameter is used for emitting the state
  ///
  /// Throws an error if an error occurs during the API call process.
  FutureOr<void> _callFetchMe(
    FetchMeEvent event,
    Emitter<ProfileState> emit,
  ) async {
    await _repository.fetchMe(
      headers: {
        'Content-type': 'application/json',
        'Authorization':
            'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3ODc3NjY2OX0.16TzzeJMkGbsT-hk-wigjBt4xeJNcwNzVvnl05evYUk',
      },
    ).then((value) async {
      getMeResp = value;
      _onFetchMeSuccess(value, emit);
    }).onError((error, stackTrace) {
      //implement error call
      _onFetchMeError();
    });
  }

  void _onFetchMeSuccess(
    GetMeResp resp,
    Emitter<ProfileState> emit,
  ) {
    emit(
      state.copyWith(
        profileModelObj: state.profileModelObj?.copyWith(
          emailTxt: resp.data?.email ?? '',
          suzanejobsTxt: resp.data?.name ?? '',
        ),
      ),
    );
  }

  void _onFetchMeError() {
    //implement error method body...
  }
}
