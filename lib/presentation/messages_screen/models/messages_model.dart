import 'package:equatable/equatable.dart';import 'listellipse7_item_model.dart';import 'listmessage_item_model.dart';
// ignore: must_be_immutable
class MessagesModel extends Equatable {MessagesModel({this.listellipse7ItemList = const [], this.listmessageItemList = const []});

List<Listellipse7ItemModel> listellipse7ItemList;

List<ListmessageItemModel> listmessageItemList;

MessagesModel copyWith({List<Listellipse7ItemModel>? listellipse7ItemList, List<ListmessageItemModel>? listmessageItemList}) { return MessagesModel(
listellipse7ItemList : listellipse7ItemList ?? this.listellipse7ItemList,
listmessageItemList : listmessageItemList ?? this.listmessageItemList,
); } 
@override List<Object?> get props => [listellipse7ItemList,listmessageItemList];
 }
