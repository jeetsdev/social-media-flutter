import 'package:equatable/equatable.dart';import 'suggested_item_model.dart';
// ignore: must_be_immutable
class SuggestedModel extends Equatable {SuggestedModel({this.suggestedItemList = const []});

List<SuggestedItemModel> suggestedItemList;

SuggestedModel copyWith({List<SuggestedItemModel>? suggestedItemList}) { return SuggestedModel(
suggestedItemList : suggestedItemList ?? this.suggestedItemList,
); } 
@override List<Object?> get props => [suggestedItemList];
 }
