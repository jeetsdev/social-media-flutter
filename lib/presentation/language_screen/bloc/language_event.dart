// ignore_for_file: must_be_immutable

part of 'language_bloc.dart';

@immutable
abstract class LanguageEvent extends Equatable {}

class LanguageInitialEvent extends LanguageEvent {
  @override
  List<Object?> get props => [];
}

///event for change radio button
class ChangeRadioButtonEvent extends LanguageEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change radio button
class ChangeRadioButton1Event extends LanguageEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
