import 'package:equatable/equatable.dart';import 'grid_item_model.dart';
// ignore: must_be_immutable
class PostsAddEffectsModel extends Equatable {PostsAddEffectsModel({this.gridItemList = const []});

List<GridItemModel> gridItemList;

PostsAddEffectsModel copyWith({List<GridItemModel>? gridItemList}) { return PostsAddEffectsModel(
gridItemList : gridItemList ?? this.gridItemList,
); } 
@override List<Object?> get props => [gridItemList];
 }
