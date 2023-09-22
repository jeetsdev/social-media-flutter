// ignore_for_file: must_be_immutable

part of 'search_results_users_tab_container_bloc.dart';

@immutable
abstract class SearchResultsUsersTabContainerEvent extends Equatable {}

class SearchResultsUsersTabContainerInitialEvent
    extends SearchResultsUsersTabContainerEvent {
  @override
  List<Object?> get props => [];
}
