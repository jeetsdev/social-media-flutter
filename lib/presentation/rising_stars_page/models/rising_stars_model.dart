import 'package:equatable/equatable.dart';import 'listellipse2_item_model.dart';
// ignore: must_be_immutable
class RisingStarsModel extends Equatable {RisingStarsModel({this.listellipse2ItemList = const []});

List<Listellipse2ItemModel> listellipse2ItemList;

RisingStarsModel copyWith({List<Listellipse2ItemModel>? listellipse2ItemList}) { return RisingStarsModel(
listellipse2ItemList : listellipse2ItemList ?? this.listellipse2ItemList,
); } 
@override List<Object?> get props => [listellipse2ItemList];
 }
