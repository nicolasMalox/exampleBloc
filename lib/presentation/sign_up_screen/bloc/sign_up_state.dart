// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.phoneController,
    this.passwordController,
    this.confirmpasswordController,
    this.signUpModelObj,
  });

  TextEditingController? phoneController;

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  SignUpModel? signUpModelObj;

  @override
  List<Object?> get props => [
        phoneController,
        passwordController,
        confirmpasswordController,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? phoneController,
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      phoneController: phoneController ?? this.phoneController,
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
