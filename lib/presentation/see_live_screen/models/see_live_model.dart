import 'package:equatable/equatable.dart';import 'seelive_item_model.dart';
// ignore: must_be_immutable
class SeeLiveModel extends Equatable {SeeLiveModel({this.seeliveItemList = const []});

List<SeeliveItemModel> seeliveItemList;

SeeLiveModel copyWith({List<SeeliveItemModel>? seeliveItemList}) { return SeeLiveModel(
seeliveItemList : seeliveItemList ?? this.seeliveItemList,
); } 
@override List<Object?> get props => [seeliveItemList];
 }
