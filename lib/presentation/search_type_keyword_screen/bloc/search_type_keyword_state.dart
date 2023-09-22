// ignore_for_file: must_be_immutable

part of 'search_type_keyword_bloc.dart';

class SearchTypeKeywordState extends Equatable {
  SearchTypeKeywordState({
    this.stateActiveSearchController,
    this.searchTypeKeywordModelObj,
  });

  TextEditingController? stateActiveSearchController;

  SearchTypeKeywordModel? searchTypeKeywordModelObj;

  @override
  List<Object?> get props => [
        stateActiveSearchController,
        searchTypeKeywordModelObj,
      ];
  SearchTypeKeywordState copyWith({
    TextEditingController? stateActiveSearchController,
    SearchTypeKeywordModel? searchTypeKeywordModelObj,
  }) {
    return SearchTypeKeywordState(
      stateActiveSearchController:
          stateActiveSearchController ?? this.stateActiveSearchController,
      searchTypeKeywordModelObj:
          searchTypeKeywordModelObj ?? this.searchTypeKeywordModelObj,
    );
  }
}
