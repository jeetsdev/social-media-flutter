import 'package:equatable/equatable.dart';import 'listellipse_item_model.dart';import 'listplay_item_model.dart';
// ignore: must_be_immutable
class SearchResultsTopModel extends Equatable {SearchResultsTopModel({this.listellipseItemList = const [], this.listplayItemList = const []});

List<ListellipseItemModel> listellipseItemList;

List<ListplayItemModel> listplayItemList;

SearchResultsTopModel copyWith({List<ListellipseItemModel>? listellipseItemList, List<ListplayItemModel>? listplayItemList}) { return SearchResultsTopModel(
listellipseItemList : listellipseItemList ?? this.listellipseItemList,
listplayItemList : listplayItemList ?? this.listplayItemList,
); } 
@override List<Object?> get props => [listellipseItemList,listplayItemList];
 }
