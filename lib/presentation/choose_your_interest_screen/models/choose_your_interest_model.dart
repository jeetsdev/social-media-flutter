import 'package:equatable/equatable.dart';import 'chip_item_model.dart';
// ignore: must_be_immutable
class ChooseYourInterestModel extends Equatable {ChooseYourInterestModel({this.chipItemList = const []});

List<ChipItemModel> chipItemList;

ChooseYourInterestModel copyWith({List<ChipItemModel>? chipItemList}) { return ChooseYourInterestModel(
chipItemList : chipItemList ?? this.chipItemList,
); } 
@override List<Object?> get props => [chipItemList];
 }
