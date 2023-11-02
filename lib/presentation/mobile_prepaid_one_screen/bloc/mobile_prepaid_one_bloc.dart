import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/profile1_item_model.dart';
import 'package:nicolas_s_application1/presentation/mobile_prepaid_one_screen/models/mobile_prepaid_one_model.dart';
part 'mobile_prepaid_one_event.dart';
part 'mobile_prepaid_one_state.dart';

/// A bloc that manages the state of a MobilePrepaidOne according to the event that is dispatched to it.
class MobilePrepaidOneBloc
    extends Bloc<MobilePrepaidOneEvent, MobilePrepaidOneState> {
  MobilePrepaidOneBloc(MobilePrepaidOneState initialState)
      : super(initialState) {
    on<MobilePrepaidOneInitialEvent>(_onInitialize);
  }

  List<Profile1ItemModel> fillProfile1ItemList() {
    return List.generate(5, (index) => Profile1ItemModel());
  }

  _onInitialize(
    MobilePrepaidOneInitialEvent event,
    Emitter<MobilePrepaidOneState> emit,
  ) async {
    emit(state.copyWith(nameController: TextEditingController()));
    emit(state.copyWith(
        mobilePrepaidOneModelObj: state.mobilePrepaidOneModelObj
            ?.copyWith(profile1ItemList: fillProfile1ItemList())));
  }
}
