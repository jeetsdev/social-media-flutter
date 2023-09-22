import 'package:equatable/equatable.dart';import 'listellipse3_item_model.dart';
// ignore: must_be_immutable
class GoLiveTogetherModel extends Equatable {GoLiveTogetherModel({this.listellipse3ItemList = const []});

List<Listellipse3ItemModel> listellipse3ItemList;

GoLiveTogetherModel copyWith({List<Listellipse3ItemModel>? listellipse3ItemList}) { return GoLiveTogetherModel(
listellipse3ItemList : listellipse3ItemList ?? this.listellipse3ItemList,
); } 
@override List<Object?> get props => [listellipse3ItemList];
 }
