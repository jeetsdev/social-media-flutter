import 'package:equatable/equatable.dart';
// ignore: must_be_immutable
class ReportModel extends Equatable {ReportModel({this.radioList = const []});

List<String> radioList;

ReportModel copyWith({List<String>? radioList}) { return ReportModel(
radioList : radioList ?? this.radioList,
); } 
@override List<Object?> get props => [radioList];
 }
