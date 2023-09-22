// ignore_for_file: must_be_immutable

part of 'profile_two_bloc.dart';

@immutable
abstract class ProfileTwoEvent extends Equatable {}

class ProfileTwoInitialEvent extends ProfileTwoEvent {
  @override
  List<Object?> get props => [];
}
