import 'package:equatable/equatable.dart';import 'listellipse5_item_model.dart';import 'listaction_item_model.dart';import 'package:ranjeet_social_media/data/models/selectionPopupModel/selection_popup_model.dart';
// ignore: must_be_immutable
class AllActivityModel extends Equatable {AllActivityModel({this.listellipse5ItemList = const [], this.listactionItemList = const [], this.dropdownItemList = const []});

List<Listellipse5ItemModel> listellipse5ItemList;

List<ListactionItemModel> listactionItemList;

List<SelectionPopupModel> dropdownItemList;

AllActivityModel copyWith({List<Listellipse5ItemModel>? listellipse5ItemList, List<ListactionItemModel>? listactionItemList, List<SelectionPopupModel>? dropdownItemList}) { return AllActivityModel(
listellipse5ItemList : listellipse5ItemList ?? this.listellipse5ItemList,
listactionItemList : listactionItemList ?? this.listactionItemList,
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [listellipse5ItemList,listactionItemList,dropdownItemList];
 }
