import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listtitle_item_model.dart';
import 'package:ranjeet_social_media/presentation/search_results_sounds_page/models/search_results_sounds_model.dart';
part 'search_results_sounds_event.dart';
part 'search_results_sounds_state.dart';

class SearchResultsSoundsBloc
    extends Bloc<SearchResultsSoundsEvent, SearchResultsSoundsState> {
  SearchResultsSoundsBloc(SearchResultsSoundsState initialState)
      : super(initialState) {
    on<SearchResultsSoundsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchResultsSoundsInitialEvent event,
    Emitter<SearchResultsSoundsState> emit,
  ) async {
    emit(state.copyWith(
        searchResultsSoundsModelObj:
            state.searchResultsSoundsModelObj?.copyWith(
      listtitleItemList: fillListtitleItemList(),
    )));
  }

  List<ListtitleItemModel> fillListtitleItemList() {
    return List.generate(5, (index) => ListtitleItemModel());
  }
}
