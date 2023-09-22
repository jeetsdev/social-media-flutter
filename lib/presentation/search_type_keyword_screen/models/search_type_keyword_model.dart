import 'package:equatable/equatable.dart';import 'listname_item_model.dart';import 'listname1_item_model.dart';
// ignore: must_be_immutable
class SearchTypeKeywordModel extends Equatable {SearchTypeKeywordModel({this.listnameItemList = const [], this.listname1ItemList = const []});

List<ListnameItemModel> listnameItemList;

List<Listname1ItemModel> listname1ItemList;

SearchTypeKeywordModel copyWith({List<ListnameItemModel>? listnameItemList, List<Listname1ItemModel>? listname1ItemList}) { return SearchTypeKeywordModel(
listnameItemList : listnameItemList ?? this.listnameItemList,
listname1ItemList : listname1ItemList ?? this.listname1ItemList,
); } 
@override List<Object?> get props => [listnameItemList,listname1ItemList];
 }
