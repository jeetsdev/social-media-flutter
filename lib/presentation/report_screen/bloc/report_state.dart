// ignore_for_file: must_be_immutable

part of 'report_bloc.dart';

class ReportState extends Equatable {
  ReportState({
    this.radioGroup = "",
    this.reportModelObj,
  });

  ReportModel? reportModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        reportModelObj,
      ];
  ReportState copyWith({
    String? radioGroup,
    ReportModel? reportModelObj,
  }) {
    return ReportState(
      radioGroup: radioGroup ?? this.radioGroup,
      reportModelObj: reportModelObj ?? this.reportModelObj,
    );
  }
}
