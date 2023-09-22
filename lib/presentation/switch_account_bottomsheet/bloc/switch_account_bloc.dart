import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/switchaccount_item_model.dart';
import 'package:ranjeet_social_media/presentation/switch_account_bottomsheet/models/switch_account_model.dart';
part 'switch_account_event.dart';
part 'switch_account_state.dart';

class SwitchAccountBloc extends Bloc<SwitchAccountEvent, SwitchAccountState> {
  SwitchAccountBloc(SwitchAccountState initialState) : super(initialState) {
    on<SwitchAccountInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SwitchAccountInitialEvent event,
    Emitter<SwitchAccountState> emit,
  ) async {
    emit(state.copyWith(
        switchAccountModelObj: state.switchAccountModelObj?.copyWith(
      switchaccountItemList: fillSwitchaccountItemList(),
    )));
  }

  List<SwitchaccountItemModel> fillSwitchaccountItemList() {
    return List.generate(3, (index) => SwitchaccountItemModel());
  }
}
