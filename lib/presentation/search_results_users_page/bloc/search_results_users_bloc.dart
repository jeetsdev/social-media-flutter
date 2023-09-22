import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listellipse1_item_model.dart';
import 'package:ranjeet_social_media/presentation/search_results_users_page/models/search_results_users_model.dart';
part 'search_results_users_event.dart';
part 'search_results_users_state.dart';

class SearchResultsUsersBloc
    extends Bloc<SearchResultsUsersEvent, SearchResultsUsersState> {
  SearchResultsUsersBloc(SearchResultsUsersState initialState)
      : super(initialState) {
    on<SearchResultsUsersInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchResultsUsersInitialEvent event,
    Emitter<SearchResultsUsersState> emit,
  ) async {
    emit(state.copyWith(
        searchResultsUsersModelObj: state.searchResultsUsersModelObj?.copyWith(
      listellipse1ItemList: fillListellipse1ItemList(),
    )));
  }

  List<Listellipse1ItemModel> fillListellipse1ItemList() {
    return List.generate(6, (index) => Listellipse1ItemModel());
  }
}
