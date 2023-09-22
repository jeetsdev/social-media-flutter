// ignore_for_file: must_be_immutable

part of 'search_results_videos_bloc.dart';

@immutable
abstract class SearchResultsVideosEvent extends Equatable {}

class SearchResultsVideosInitialEvent extends SearchResultsVideosEvent {
  @override
  List<Object?> get props => [];
}
