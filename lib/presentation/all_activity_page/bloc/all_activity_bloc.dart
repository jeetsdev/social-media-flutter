import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listellipse5_item_model.dart';
import '../models/listaction_item_model.dart';
import 'package:ranjeet_social_media/presentation/all_activity_page/models/all_activity_model.dart';
part 'all_activity_event.dart';
part 'all_activity_state.dart';

class AllActivityBloc extends Bloc<AllActivityEvent, AllActivityState> {
  AllActivityBloc(AllActivityState initialState) : super(initialState) {
    on<AllActivityInitialEvent>(_onInitialize);
    on<onSelected>(_onSelected);
  }

  _onInitialize(
    AllActivityInitialEvent event,
    Emitter<AllActivityState> emit,
  ) async {
    emit(state.copyWith(
        allActivityModelObj: state.allActivityModelObj?.copyWith(
      listellipse5ItemList: fillListellipse5ItemList(),
      listactionItemList: fillListactionItemList(),
      dropdownItemList: fillDropdownItemList(),
    )));
  }

  _onSelected(
    onSelected event,
    Emitter<AllActivityState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  List<Listellipse5ItemModel> fillListellipse5ItemList() {
    return List.generate(3, (index) => Listellipse5ItemModel());
  }

  List<ListactionItemModel> fillListactionItemList() {
    return List.generate(2, (index) => ListactionItemModel());
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }
}
