// ignore_for_file: must_be_immutable

part of 'search_results_users_tab_container_bloc.dart';

class SearchResultsUsersTabContainerState extends Equatable {
  SearchResultsUsersTabContainerState({
    this.stateFilledSearchController,
    this.searchResultsUsersTabContainerModelObj,
  });

  TextEditingController? stateFilledSearchController;

  SearchResultsUsersTabContainerModel? searchResultsUsersTabContainerModelObj;

  @override
  List<Object?> get props => [
        stateFilledSearchController,
        searchResultsUsersTabContainerModelObj,
      ];
  SearchResultsUsersTabContainerState copyWith({
    TextEditingController? stateFilledSearchController,
    SearchResultsUsersTabContainerModel? searchResultsUsersTabContainerModelObj,
  }) {
    return SearchResultsUsersTabContainerState(
      stateFilledSearchController:
          stateFilledSearchController ?? this.stateFilledSearchController,
      searchResultsUsersTabContainerModelObj:
          searchResultsUsersTabContainerModelObj ??
              this.searchResultsUsersTabContainerModelObj,
    );
  }
}
