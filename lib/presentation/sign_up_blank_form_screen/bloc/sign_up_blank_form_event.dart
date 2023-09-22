// ignore_for_file: must_be_immutable

part of 'sign_up_blank_form_bloc.dart';

@immutable
abstract class SignUpBlankFormEvent extends Equatable {}

class SignUpBlankFormInitialEvent extends SignUpBlankFormEvent {
  @override
  List<Object?> get props => [];
}

class GoogleAuthEvent extends SignUpBlankFormEvent {
  GoogleAuthEvent();

  @override
  List<Object?> get props => [];
}

///event for change password visibility
class ChangePasswordVisibilityEvent extends SignUpBlankFormEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change checkbox
class ChangeCheckBoxEvent extends SignUpBlankFormEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
