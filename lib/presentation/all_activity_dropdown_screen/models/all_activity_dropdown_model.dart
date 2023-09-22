import 'package:equatable/equatable.dart';import 'listellipse6_item_model.dart';import 'listaction1_item_model.dart';import 'package:ranjeet_social_media/data/models/selectionPopupModel/selection_popup_model.dart';
// ignore: must_be_immutable
class AllActivityDropdownModel extends Equatable {AllActivityDropdownModel({this.listellipse6ItemList = const [], this.listaction1ItemList = const [], this.dropdownItemList = const []});

List<Listellipse6ItemModel> listellipse6ItemList;

List<Listaction1ItemModel> listaction1ItemList;

List<SelectionPopupModel> dropdownItemList;

AllActivityDropdownModel copyWith({List<Listellipse6ItemModel>? listellipse6ItemList, List<Listaction1ItemModel>? listaction1ItemList, List<SelectionPopupModel>? dropdownItemList}) { return AllActivityDropdownModel(
listellipse6ItemList : listellipse6ItemList ?? this.listellipse6ItemList,
listaction1ItemList : listaction1ItemList ?? this.listaction1ItemList,
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [listellipse6ItemList,listaction1ItemList,dropdownItemList];
 }
