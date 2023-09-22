// ignore_for_file: must_be_immutable

part of 'find_friends_bloc.dart';

@immutable
abstract class FindFriendsEvent extends Equatable {}

class FindFriendsInitialEvent extends FindFriendsEvent {
  @override
  List<Object?> get props => [];
}
