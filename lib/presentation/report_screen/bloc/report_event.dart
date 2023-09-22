// ignore_for_file: must_be_immutable

part of 'report_bloc.dart';

@immutable
abstract class ReportEvent extends Equatable {}

class ReportInitialEvent extends ReportEvent {
  @override
  List<Object?> get props => [];
}

///event for change radio button
class ChangeRadioButtonEvent extends ReportEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
