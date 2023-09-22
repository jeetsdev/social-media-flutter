import 'package:equatable/equatable.dart';import 'soundused_item_model.dart';
// ignore: must_be_immutable
class SoundUsedModel extends Equatable {SoundUsedModel({this.soundusedItemList = const []});

List<SoundusedItemModel> soundusedItemList;

SoundUsedModel copyWith({List<SoundusedItemModel>? soundusedItemList}) { return SoundUsedModel(
soundusedItemList : soundusedItemList ?? this.soundusedItemList,
); } 
@override List<Object?> get props => [soundusedItemList];
 }
