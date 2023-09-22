import 'package:equatable/equatable.dart';import 'weeklyranking_item_model.dart';
// ignore: must_be_immutable
class WeeklyRankingModel extends Equatable {WeeklyRankingModel({this.weeklyrankingItemList = const []});

List<WeeklyrankingItemModel> weeklyrankingItemList;

WeeklyRankingModel copyWith({List<WeeklyrankingItemModel>? weeklyrankingItemList}) { return WeeklyRankingModel(
weeklyrankingItemList : weeklyrankingItemList ?? this.weeklyrankingItemList,
); } 
@override List<Object?> get props => [weeklyrankingItemList];
 }
