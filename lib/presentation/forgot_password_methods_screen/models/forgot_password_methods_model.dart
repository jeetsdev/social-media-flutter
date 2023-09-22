import 'package:equatable/equatable.dart';import 'listiconlyboldchat_item_model.dart';
// ignore: must_be_immutable
class ForgotPasswordMethodsModel extends Equatable {ForgotPasswordMethodsModel({this.listiconlyboldchatItemList = const []});

List<ListiconlyboldchatItemModel> listiconlyboldchatItemList;

ForgotPasswordMethodsModel copyWith({List<ListiconlyboldchatItemModel>? listiconlyboldchatItemList}) { return ForgotPasswordMethodsModel(
listiconlyboldchatItemList : listiconlyboldchatItemList ?? this.listiconlyboldchatItemList,
); } 
@override List<Object?> get props => [listiconlyboldchatItemList];
 }
