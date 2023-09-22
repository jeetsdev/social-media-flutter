import 'package:equatable/equatable.dart';import 'gridplay_item_model.dart';
// ignore: must_be_immutable
class SearchResultsVideosModel extends Equatable {SearchResultsVideosModel({this.gridplayItemList = const []});

List<GridplayItemModel> gridplayItemList;

SearchResultsVideosModel copyWith({List<GridplayItemModel>? gridplayItemList}) { return SearchResultsVideosModel(
gridplayItemList : gridplayItemList ?? this.gridplayItemList,
); } 
@override List<Object?> get props => [gridplayItemList];
 }
