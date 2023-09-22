import 'package:equatable/equatable.dart';import 'listellipse4_item_model.dart';
// ignore: must_be_immutable
class QuestionAnswerModel extends Equatable {QuestionAnswerModel({this.listellipse4ItemList = const []});

List<Listellipse4ItemModel> listellipse4ItemList;

QuestionAnswerModel copyWith({List<Listellipse4ItemModel>? listellipse4ItemList}) { return QuestionAnswerModel(
listellipse4ItemList : listellipse4ItemList ?? this.listellipse4ItemList,
); } 
@override List<Object?> get props => [listellipse4ItemList];
 }
