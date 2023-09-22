import 'package:equatable/equatable.dart';import 'gridplay2_item_model.dart';
// ignore: must_be_immutable
class TrendingHashtagDetailsModel extends Equatable {TrendingHashtagDetailsModel({this.gridplay2ItemList = const []});

List<Gridplay2ItemModel> gridplay2ItemList;

TrendingHashtagDetailsModel copyWith({List<Gridplay2ItemModel>? gridplay2ItemList}) { return TrendingHashtagDetailsModel(
gridplay2ItemList : gridplay2ItemList ?? this.gridplay2ItemList,
); } 
@override List<Object?> get props => [gridplay2ItemList];
 }
