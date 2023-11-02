// ignore_for_file: must_be_immutable

part of 'edit_profile_bloc.dart';

/// Represents the state of EditProfile in the application.
class EditProfileState extends Equatable {
  EditProfileState({
    this.nameController,
    this.emailController,
    this.phoneController,
    this.editProfileModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? emailController;

  TextEditingController? phoneController;

  EditProfileModel? editProfileModelObj;

  @override
  List<Object?> get props => [
        nameController,
        emailController,
        phoneController,
        editProfileModelObj,
      ];
  EditProfileState copyWith({
    TextEditingController? nameController,
    TextEditingController? emailController,
    TextEditingController? phoneController,
    EditProfileModel? editProfileModelObj,
  }) {
    return EditProfileState(
      nameController: nameController ?? this.nameController,
      emailController: emailController ?? this.emailController,
      phoneController: phoneController ?? this.phoneController,
      editProfileModelObj: editProfileModelObj ?? this.editProfileModelObj,
    );
  }
}
