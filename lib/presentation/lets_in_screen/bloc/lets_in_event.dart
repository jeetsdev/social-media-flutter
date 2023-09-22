// ignore_for_file: must_be_immutable

part of 'lets_in_bloc.dart';

@immutable
abstract class LetsInEvent extends Equatable {}

class LetsInInitialEvent extends LetsInEvent {
  @override
  List<Object?> get props => [];
}

class GoogleAuthEvent extends LetsInEvent {
  GoogleAuthEvent();

  @override
  List<Object?> get props => [];
}

class FacebookAuthEvent extends LetsInEvent {
  FacebookAuthEvent();

  @override
  List<Object?> get props => [];
}
