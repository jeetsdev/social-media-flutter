import 'package:equatable/equatable.dart';import 'gridcheckmark_item_model.dart';
// ignore: must_be_immutable
class PostsUploadMediaModel extends Equatable {PostsUploadMediaModel({this.gridcheckmarkItemList = const []});

List<GridcheckmarkItemModel> gridcheckmarkItemList;

PostsUploadMediaModel copyWith({List<GridcheckmarkItemModel>? gridcheckmarkItemList}) { return PostsUploadMediaModel(
gridcheckmarkItemList : gridcheckmarkItemList ?? this.gridcheckmarkItemList,
); } 
@override List<Object?> get props => [gridcheckmarkItemList];
 }
