import 'package:equatable/equatable.dart';import 'viewers_item_model.dart';
// ignore: must_be_immutable
class ViewersModel extends Equatable {ViewersModel({this.viewersItemList = const []});

List<ViewersItemModel> viewersItemList;

ViewersModel copyWith({List<ViewersItemModel>? viewersItemList}) { return ViewersModel(
viewersItemList : viewersItemList ?? this.viewersItemList,
); } 
@override List<Object?> get props => [viewersItemList];
 }
