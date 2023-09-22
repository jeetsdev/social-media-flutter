import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/suggested_item_model.dart';
import 'package:ranjeet_social_media/presentation/suggested_page/models/suggested_model.dart';
part 'suggested_event.dart';
part 'suggested_state.dart';

class SuggestedBloc extends Bloc<SuggestedEvent, SuggestedState> {
  SuggestedBloc(SuggestedState initialState) : super(initialState) {
    on<SuggestedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SuggestedInitialEvent event,
    Emitter<SuggestedState> emit,
  ) async {
    emit(state.copyWith(
        suggestedModelObj: state.suggestedModelObj?.copyWith(
      suggestedItemList: fillSuggestedItemList(),
    )));
  }

  List<SuggestedItemModel> fillSuggestedItemList() {
    return List.generate(6, (index) => SuggestedItemModel());
  }
}
