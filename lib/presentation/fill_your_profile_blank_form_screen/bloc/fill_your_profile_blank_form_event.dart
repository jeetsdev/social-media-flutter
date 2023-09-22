// ignore_for_file: must_be_immutable

part of 'fill_your_profile_blank_form_bloc.dart';

@immutable
abstract class FillYourProfileBlankFormEvent extends Equatable {}

class FillYourProfileBlankFormInitialEvent
    extends FillYourProfileBlankFormEvent {
  @override
  List<Object?> get props => [];
}

///event for change country code
class ChangeCountryEvent extends FillYourProfileBlankFormEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
