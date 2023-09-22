import 'package:equatable/equatable.dart';
// ignore: must_be_immutable
class ChipItemModel extends Equatable {ChipItemModel({this.sizeLargeTypeBorderTxt = "Gaming", this.isSelected = false});

String sizeLargeTypeBorderTxt;

bool isSelected;

ChipItemModel copyWith({String? sizeLargeTypeBorderTxt, bool? isSelected}) { return ChipItemModel(
sizeLargeTypeBorderTxt : sizeLargeTypeBorderTxt ?? this.sizeLargeTypeBorderTxt,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [sizeLargeTypeBorderTxt,isSelected];
 }
