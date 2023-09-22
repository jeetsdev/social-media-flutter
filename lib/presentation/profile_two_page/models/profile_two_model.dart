import 'package:equatable/equatable.dart';import 'profiletwo_item_model.dart';
// ignore: must_be_immutable
class ProfileTwoModel extends Equatable {ProfileTwoModel({this.profiletwoItemList = const []});

List<ProfiletwoItemModel> profiletwoItemList;

ProfileTwoModel copyWith({List<ProfiletwoItemModel>? profiletwoItemList}) { return ProfileTwoModel(
profiletwoItemList : profiletwoItemList ?? this.profiletwoItemList,
); } 
@override List<Object?> get props => [profiletwoItemList];
 }
