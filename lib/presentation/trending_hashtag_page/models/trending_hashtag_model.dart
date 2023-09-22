import 'package:equatable/equatable.dart';import 'listplay3_item_model.dart';import 'listplay4_item_model.dart';
// ignore: must_be_immutable
class TrendingHashtagModel extends Equatable {TrendingHashtagModel({this.listplay3ItemList = const [], this.listplay4ItemList = const []});

List<Listplay3ItemModel> listplay3ItemList;

List<Listplay4ItemModel> listplay4ItemList;

TrendingHashtagModel copyWith({List<Listplay3ItemModel>? listplay3ItemList, List<Listplay4ItemModel>? listplay4ItemList}) { return TrendingHashtagModel(
listplay3ItemList : listplay3ItemList ?? this.listplay3ItemList,
listplay4ItemList : listplay4ItemList ?? this.listplay4ItemList,
); } 
@override List<Object?> get props => [listplay3ItemList,listplay4ItemList];
 }
