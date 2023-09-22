import 'package:equatable/equatable.dart';import 'listplay1_item_model.dart';import 'listplay2_item_model.dart';
// ignore: must_be_immutable
class TrendingSoundsModel extends Equatable {TrendingSoundsModel({this.listplay1ItemList = const [], this.listplay2ItemList = const []});

List<Listplay1ItemModel> listplay1ItemList;

List<Listplay2ItemModel> listplay2ItemList;

TrendingSoundsModel copyWith({List<Listplay1ItemModel>? listplay1ItemList, List<Listplay2ItemModel>? listplay2ItemList}) { return TrendingSoundsModel(
listplay1ItemList : listplay1ItemList ?? this.listplay1ItemList,
listplay2ItemList : listplay2ItemList ?? this.listplay2ItemList,
); } 
@override List<Object?> get props => [listplay1ItemList,listplay2ItemList];
 }
