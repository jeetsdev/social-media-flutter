// ignore_for_file: must_be_immutable

part of 'search_results_sounds_bloc.dart';

@immutable
abstract class SearchResultsSoundsEvent extends Equatable {}

class SearchResultsSoundsInitialEvent extends SearchResultsSoundsEvent {
  @override
  List<Object?> get props => [];
}
