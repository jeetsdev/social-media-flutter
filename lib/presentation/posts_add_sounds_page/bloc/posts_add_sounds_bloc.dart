import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listplay5_item_model.dart';
import 'package:ranjeet_social_media/presentation/posts_add_sounds_page/models/posts_add_sounds_model.dart';
part 'posts_add_sounds_event.dart';
part 'posts_add_sounds_state.dart';

class PostsAddSoundsBloc
    extends Bloc<PostsAddSoundsEvent, PostsAddSoundsState> {
  PostsAddSoundsBloc(PostsAddSoundsState initialState) : super(initialState) {
    on<PostsAddSoundsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PostsAddSoundsInitialEvent event,
    Emitter<PostsAddSoundsState> emit,
  ) async {
    emit(state.copyWith(
        postsAddSoundsModelObj: state.postsAddSoundsModelObj?.copyWith(
      listplay5ItemList: fillListplay5ItemList(),
    )));
  }

  List<Listplay5ItemModel> fillListplay5ItemList() {
    return List.generate(6, (index) => Listplay5ItemModel());
  }
}
