// ignore_for_file: must_be_immutable

part of 'edit_profile_bloc.dart';

@immutable
abstract class EditProfileEvent extends Equatable {}

class EditProfileInitialEvent extends EditProfileEvent {
  @override
  List<Object?> get props => [];
}

class FacebookAuthEvent extends EditProfileEvent {
  FacebookAuthEvent();

  @override
  List<Object?> get props => [];
}
