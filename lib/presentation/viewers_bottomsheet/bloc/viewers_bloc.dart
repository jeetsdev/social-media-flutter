import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewers_item_model.dart';
import 'package:ranjeet_social_media/presentation/viewers_bottomsheet/models/viewers_model.dart';
part 'viewers_event.dart';
part 'viewers_state.dart';

class ViewersBloc extends Bloc<ViewersEvent, ViewersState> {
  ViewersBloc(ViewersState initialState) : super(initialState) {
    on<ViewersInitialEvent>(_onInitialize);
  }

  List<ViewersItemModel> fillViewersItemList() {
    return List.generate(4, (index) => ViewersItemModel());
  }

  _onInitialize(
    ViewersInitialEvent event,
    Emitter<ViewersState> emit,
  ) async {
    emit(state.copyWith(
      stateDefaultSearchController: TextEditingController(),
    ));
    emit(state.copyWith(
        viewersModelObj: state.viewersModelObj?.copyWith(
      viewersItemList: fillViewersItemList(),
    )));
  }
}
