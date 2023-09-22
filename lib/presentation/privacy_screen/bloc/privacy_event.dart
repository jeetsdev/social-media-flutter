// ignore_for_file: must_be_immutable

part of 'privacy_bloc.dart';

@immutable
abstract class PrivacyEvent extends Equatable {}

class PrivacyInitialEvent extends PrivacyEvent {
  @override
  List<Object?> get props => [];
}

///event for change switch
class ChangeSwitchEvent extends PrivacyEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change switch
class ChangeSwitch1Event extends PrivacyEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
