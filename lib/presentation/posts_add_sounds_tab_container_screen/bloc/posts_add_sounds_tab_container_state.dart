// ignore_for_file: must_be_immutable

part of 'posts_add_sounds_tab_container_bloc.dart';

class PostsAddSoundsTabContainerState extends Equatable {
  PostsAddSoundsTabContainerState({
    this.stateDefaultSearchController,
    this.postsAddSoundsTabContainerModelObj,
  });

  TextEditingController? stateDefaultSearchController;

  PostsAddSoundsTabContainerModel? postsAddSoundsTabContainerModelObj;

  @override
  List<Object?> get props => [
        stateDefaultSearchController,
        postsAddSoundsTabContainerModelObj,
      ];
  PostsAddSoundsTabContainerState copyWith({
    TextEditingController? stateDefaultSearchController,
    PostsAddSoundsTabContainerModel? postsAddSoundsTabContainerModelObj,
  }) {
    return PostsAddSoundsTabContainerState(
      stateDefaultSearchController:
          stateDefaultSearchController ?? this.stateDefaultSearchController,
      postsAddSoundsTabContainerModelObj: postsAddSoundsTabContainerModelObj ??
          this.postsAddSoundsTabContainerModelObj,
    );
  }
}
