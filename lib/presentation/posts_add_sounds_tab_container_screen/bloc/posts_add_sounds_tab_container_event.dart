// ignore_for_file: must_be_immutable

part of 'posts_add_sounds_tab_container_bloc.dart';

@immutable
abstract class PostsAddSoundsTabContainerEvent extends Equatable {}

class PostsAddSoundsTabContainerInitialEvent
    extends PostsAddSoundsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
