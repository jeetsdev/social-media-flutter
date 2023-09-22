import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ranjeet_social_media/presentation/search_results_users_tab_container_screen/models/search_results_users_tab_container_model.dart';
part 'search_results_users_tab_container_event.dart';
part 'search_results_users_tab_container_state.dart';

class SearchResultsUsersTabContainerBloc extends Bloc<
    SearchResultsUsersTabContainerEvent, SearchResultsUsersTabContainerState> {
  SearchResultsUsersTabContainerBloc(
      SearchResultsUsersTabContainerState initialState)
      : super(initialState) {
    on<SearchResultsUsersTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchResultsUsersTabContainerInitialEvent event,
    Emitter<SearchResultsUsersTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      stateFilledSearchController: TextEditingController(),
    ));
  }
}
