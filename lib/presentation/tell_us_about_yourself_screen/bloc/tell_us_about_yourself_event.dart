// ignore_for_file: must_be_immutable

part of 'tell_us_about_yourself_bloc.dart';

@immutable
abstract class TellUsAboutYourselfEvent extends Equatable {}

class TellUsAboutYourselfInitialEvent extends TellUsAboutYourselfEvent {
  @override
  List<Object?> get props => [];
}
