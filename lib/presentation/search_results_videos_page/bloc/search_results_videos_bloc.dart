import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/gridplay_item_model.dart';
import 'package:ranjeet_social_media/presentation/search_results_videos_page/models/search_results_videos_model.dart';
part 'search_results_videos_event.dart';
part 'search_results_videos_state.dart';

class SearchResultsVideosBloc
    extends Bloc<SearchResultsVideosEvent, SearchResultsVideosState> {
  SearchResultsVideosBloc(SearchResultsVideosState initialState)
      : super(initialState) {
    on<SearchResultsVideosInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchResultsVideosInitialEvent event,
    Emitter<SearchResultsVideosState> emit,
  ) async {
    emit(state.copyWith(
        searchResultsVideosModelObj:
            state.searchResultsVideosModelObj?.copyWith(
      gridplayItemList: fillGridplayItemList(),
    )));
  }

  List<GridplayItemModel> fillGridplayItemList() {
    return List.generate(4, (index) => GridplayItemModel());
  }
}
