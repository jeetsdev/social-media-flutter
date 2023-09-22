// ignore_for_file: must_be_immutable

part of 'search_results_users_bloc.dart';

@immutable
abstract class SearchResultsUsersEvent extends Equatable {}

class SearchResultsUsersInitialEvent extends SearchResultsUsersEvent {
  @override
  List<Object?> get props => [];
}
