// ignore_for_file: must_be_immutable

part of 'search_type_keyword_bloc.dart';

@immutable
abstract class SearchTypeKeywordEvent extends Equatable {}

class SearchTypeKeywordInitialEvent extends SearchTypeKeywordEvent {
  @override
  List<Object?> get props => [];
}
