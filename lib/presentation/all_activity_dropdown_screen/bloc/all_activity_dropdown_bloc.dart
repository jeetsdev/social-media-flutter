import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listellipse6_item_model.dart';
import '../models/listaction1_item_model.dart';
import 'package:ranjeet_social_media/presentation/all_activity_dropdown_screen/models/all_activity_dropdown_model.dart';
part 'all_activity_dropdown_event.dart';
part 'all_activity_dropdown_state.dart';

class AllActivityDropdownBloc
    extends Bloc<AllActivityDropdownEvent, AllActivityDropdownState> {
  AllActivityDropdownBloc(AllActivityDropdownState initialState)
      : super(initialState) {
    on<AllActivityDropdownInitialEvent>(_onInitialize);
    on<onSelected>(_onSelected);
  }

  _onInitialize(
    AllActivityDropdownInitialEvent event,
    Emitter<AllActivityDropdownState> emit,
  ) async {
    emit(state.copyWith(
        allActivityDropdownModelObj:
            state.allActivityDropdownModelObj?.copyWith(
      listellipse6ItemList: fillListellipse6ItemList(),
      listaction1ItemList: fillListaction1ItemList(),
      dropdownItemList: fillDropdownItemList(),
    )));
  }

  _onSelected(
    onSelected event,
    Emitter<AllActivityDropdownState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  List<Listellipse6ItemModel> fillListellipse6ItemList() {
    return List.generate(3, (index) => Listellipse6ItemModel());
  }

  List<Listaction1ItemModel> fillListaction1ItemList() {
    return List.generate(2, (index) => Listaction1ItemModel());
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
