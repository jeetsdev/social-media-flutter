// ignore_for_file: must_be_immutable

part of 'search_results_top_bloc.dart';

@immutable
abstract class SearchResultsTopEvent extends Equatable {}

class SearchResultsTopInitialEvent extends SearchResultsTopEvent {
  @override
  List<Object?> get props => [];
}
