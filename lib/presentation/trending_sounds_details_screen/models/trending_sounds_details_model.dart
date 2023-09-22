import 'package:equatable/equatable.dart';import 'gridplay1_item_model.dart';
// ignore: must_be_immutable
class TrendingSoundsDetailsModel extends Equatable {TrendingSoundsDetailsModel({this.gridplay1ItemList = const []});

List<Gridplay1ItemModel> gridplay1ItemList;

TrendingSoundsDetailsModel copyWith({List<Gridplay1ItemModel>? gridplay1ItemList}) { return TrendingSoundsDetailsModel(
gridplay1ItemList : gridplay1ItemList ?? this.gridplay1ItemList,
); } 
@override List<Object?> get props => [gridplay1ItemList];
 }
