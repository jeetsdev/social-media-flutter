import 'package:equatable/equatable.dart';import 'listnov_item_model.dart';
// ignore: must_be_immutable
class WhenIsYourBirthdayModel extends Equatable {WhenIsYourBirthdayModel({this.selectedDateTxt, this.dateTxt = "", this.listnovItemList = const []});

DateTime? selectedDateTxt;

String dateTxt;

List<ListnovItemModel> listnovItemList;

WhenIsYourBirthdayModel copyWith({DateTime? selectedDateTxt, String? dateTxt, List<ListnovItemModel>? listnovItemList}) { return WhenIsYourBirthdayModel(
selectedDateTxt : selectedDateTxt ?? this.selectedDateTxt,
dateTxt : dateTxt ?? this.dateTxt,
listnovItemList : listnovItemList ?? this.listnovItemList,
); } 
@override List<Object?> get props => [selectedDateTxt,dateTxt,listnovItemList];
 }
