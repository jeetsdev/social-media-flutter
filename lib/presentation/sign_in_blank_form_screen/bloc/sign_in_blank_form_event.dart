// ignore_for_file: must_be_immutable

part of 'sign_in_blank_form_bloc.dart';

@immutable
abstract class SignInBlankFormEvent extends Equatable {}

class SignInBlankFormInitialEvent extends SignInBlankFormEvent {
  @override
  List<Object?> get props => [];
}

class GoogleAuthEvent extends SignInBlankFormEvent {
  GoogleAuthEvent();

  @override
  List<Object?> get props => [];
}

///event for change password visibility
class ChangePasswordVisibilityEvent extends SignInBlankFormEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change checkbox
class ChangeCheckBoxEvent extends SignInBlankFormEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
