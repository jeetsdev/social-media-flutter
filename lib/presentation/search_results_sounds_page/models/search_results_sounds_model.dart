import 'package:equatable/equatable.dart';import 'listtitle_item_model.dart';
// ignore: must_be_immutable
class SearchResultsSoundsModel extends Equatable {SearchResultsSoundsModel({this.listtitleItemList = const []});

List<ListtitleItemModel> listtitleItemList;

SearchResultsSoundsModel copyWith({List<ListtitleItemModel>? listtitleItemList}) { return SearchResultsSoundsModel(
listtitleItemList : listtitleItemList ?? this.listtitleItemList,
); } 
@override List<Object?> get props => [listtitleItemList];
 }
