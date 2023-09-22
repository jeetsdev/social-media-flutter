import 'package:equatable/equatable.dart';import 'comments1_item_model.dart';
// ignore: must_be_immutable
class TypeCommentsModel extends Equatable {TypeCommentsModel({this.comments1ItemList = const []});

List<Comments1ItemModel> comments1ItemList;

TypeCommentsModel copyWith({List<Comments1ItemModel>? comments1ItemList}) { return TypeCommentsModel(
comments1ItemList : comments1ItemList ?? this.comments1ItemList,
); } 
@override List<Object?> get props => [comments1ItemList];
 }
