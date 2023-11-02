// ignore_for_file: must_be_immutable

part of 'log_in_bloc.dart';

/// Represents the state of LogIn in the application.
class LogInState extends Equatable {
  LogInState({
    this.phoneController,
    this.passwordController,
    this.logInModelObj,
  });

  TextEditingController? phoneController;

  TextEditingController? passwordController;

  LogInModel? logInModelObj;

  @override
  List<Object?> get props => [
        phoneController,
        passwordController,
        logInModelObj,
      ];
  LogInState copyWith({
    TextEditingController? phoneController,
    TextEditingController? passwordController,
    LogInModel? logInModelObj,
  }) {
    return LogInState(
      phoneController: phoneController ?? this.phoneController,
      passwordController: passwordController ?? this.passwordController,
      logInModelObj: logInModelObj ?? this.logInModelObj,
    );
  }
}
