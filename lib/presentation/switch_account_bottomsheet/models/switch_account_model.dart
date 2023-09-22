import 'package:equatable/equatable.dart';import 'switchaccount_item_model.dart';
// ignore: must_be_immutable
class SwitchAccountModel extends Equatable {SwitchAccountModel({this.switchaccountItemList = const []});

List<SwitchaccountItemModel> switchaccountItemList;

SwitchAccountModel copyWith({List<SwitchaccountItemModel>? switchaccountItemList}) { return SwitchAccountModel(
switchaccountItemList : switchaccountItemList ?? this.switchaccountItemList,
); } 
@override List<Object?> get props => [switchaccountItemList];
 }
