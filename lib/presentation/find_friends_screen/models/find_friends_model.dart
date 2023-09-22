import 'package:equatable/equatable.dart';import 'listreply_item_model.dart';import 'listellipse8_item_model.dart';
// ignore: must_be_immutable
class FindFriendsModel extends Equatable {FindFriendsModel({this.listreplyItemList = const [], this.listellipse8ItemList = const []});

List<ListreplyItemModel> listreplyItemList;

List<Listellipse8ItemModel> listellipse8ItemList;

FindFriendsModel copyWith({List<ListreplyItemModel>? listreplyItemList, List<Listellipse8ItemModel>? listellipse8ItemList}) { return FindFriendsModel(
listreplyItemList : listreplyItemList ?? this.listreplyItemList,
listellipse8ItemList : listellipse8ItemList ?? this.listellipse8ItemList,
); } 
@override List<Object?> get props => [listreplyItemList,listellipse8ItemList];
 }
