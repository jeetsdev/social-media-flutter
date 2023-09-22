import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/grid_item_model.dart';
import 'package:ranjeet_social_media/presentation/posts_add_effects_bottomsheet/models/posts_add_effects_model.dart';
part 'posts_add_effects_event.dart';
part 'posts_add_effects_state.dart';

class PostsAddEffectsBloc
    extends Bloc<PostsAddEffectsEvent, PostsAddEffectsState> {
  PostsAddEffectsBloc(PostsAddEffectsState initialState) : super(initialState) {
    on<PostsAddEffectsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PostsAddEffectsInitialEvent event,
    Emitter<PostsAddEffectsState> emit,
  ) async {
    emit(state.copyWith(
        postsAddEffectsModelObj: state.postsAddEffectsModelObj?.copyWith(
      gridItemList: fillGridItemList(),
    )));
  }

  List<GridItemModel> fillGridItemList() {
    return List.generate(12, (index) => GridItemModel());
  }
}
