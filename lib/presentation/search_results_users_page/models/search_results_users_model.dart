import 'package:equatable/equatable.dart';import 'listellipse1_item_model.dart';
// ignore: must_be_immutable
class SearchResultsUsersModel extends Equatable {SearchResultsUsersModel({this.listellipse1ItemList = const []});

List<Listellipse1ItemModel> listellipse1ItemList;

SearchResultsUsersModel copyWith({List<Listellipse1ItemModel>? listellipse1ItemList}) { return SearchResultsUsersModel(
listellipse1ItemList : listellipse1ItemList ?? this.listellipse1ItemList,
); } 
@override List<Object?> get props => [listellipse1ItemList];
 }
