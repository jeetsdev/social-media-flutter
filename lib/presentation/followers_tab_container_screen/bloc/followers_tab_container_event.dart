// ignore_for_file: must_be_immutable

part of 'followers_tab_container_bloc.dart';

@immutable
abstract class FollowersTabContainerEvent extends Equatable {}

class FollowersTabContainerInitialEvent extends FollowersTabContainerEvent {
  @override
  List<Object?> get props => [];
}
