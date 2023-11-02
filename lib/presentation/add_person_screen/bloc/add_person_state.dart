// ignore_for_file: must_be_immutable

part of 'add_person_bloc.dart';

/// Represents the state of AddPerson in the application.
class AddPersonState extends Equatable {
  AddPersonState({
    this.nameController,
    this.cardNumberController,
    this.saveonlist = false,
    this.addPersonModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? cardNumberController;

  AddPersonModel? addPersonModelObj;

  bool saveonlist;

  @override
  List<Object?> get props => [
        nameController,
        cardNumberController,
        saveonlist,
        addPersonModelObj,
      ];
  AddPersonState copyWith({
    TextEditingController? nameController,
    TextEditingController? cardNumberController,
    bool? saveonlist,
    AddPersonModel? addPersonModelObj,
  }) {
    return AddPersonState(
      nameController: nameController ?? this.nameController,
      cardNumberController: cardNumberController ?? this.cardNumberController,
      saveonlist: saveonlist ?? this.saveonlist,
      addPersonModelObj: addPersonModelObj ?? this.addPersonModelObj,
    );
  }
}
