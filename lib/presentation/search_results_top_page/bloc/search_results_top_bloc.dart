import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listellipse_item_model.dart';
import '../models/listplay_item_model.dart';
import 'package:ranjeet_social_media/presentation/search_results_top_page/models/search_results_top_model.dart';
part 'search_results_top_event.dart';
part 'search_results_top_state.dart';

class SearchResultsTopBloc
    extends Bloc<SearchResultsTopEvent, SearchResultsTopState> {
  SearchResultsTopBloc(SearchResultsTopState initialState)
      : super(initialState) {
    on<SearchResultsTopInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchResultsTopInitialEvent event,
    Emitter<SearchResultsTopState> emit,
  ) async {
    emit(state.copyWith(
        searchResultsTopModelObj: state.searchResultsTopModelObj?.copyWith(
      listellipseItemList: fillListellipseItemList(),
      listplayItemList: fillListplayItemList(),
    )));
  }

  List<ListellipseItemModel> fillListellipseItemList() {
    return List.generate(2, (index) => ListellipseItemModel());
  }

  List<ListplayItemModel> fillListplayItemList() {
    return List.generate(3, (index) => ListplayItemModel());
  }
}
