import 'package:equatable/equatable.dart';
// ignore: must_be_immutable
class LanguageModel extends Equatable {LanguageModel({this.radioList = const [], this.radioList1 = const []});

List<String> radioList;

List<String> radioList1;

LanguageModel copyWith({List<String>? radioList, List<String>? radioList1}) { return LanguageModel(
radioList : radioList ?? this.radioList,
radioList1 : radioList1 ?? this.radioList1,
); } 
@override List<Object?> get props => [radioList,radioList1];
 }
