import 'package:equatable/equatable.dart';import 'listplay5_item_model.dart';
// ignore: must_be_immutable
class PostsAddSoundsModel extends Equatable {PostsAddSoundsModel({this.listplay5ItemList = const []});

List<Listplay5ItemModel> listplay5ItemList;

PostsAddSoundsModel copyWith({List<Listplay5ItemModel>? listplay5ItemList}) { return PostsAddSoundsModel(
listplay5ItemList : listplay5ItemList ?? this.listplay5ItemList,
); } 
@override List<Object?> get props => [listplay5ItemList];
 }
