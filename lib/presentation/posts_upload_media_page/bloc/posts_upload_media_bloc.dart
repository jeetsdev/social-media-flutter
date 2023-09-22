import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/gridcheckmark_item_model.dart';
import 'package:ranjeet_social_media/presentation/posts_upload_media_page/models/posts_upload_media_model.dart';
part 'posts_upload_media_event.dart';
part 'posts_upload_media_state.dart';

class PostsUploadMediaBloc
    extends Bloc<PostsUploadMediaEvent, PostsUploadMediaState> {
  PostsUploadMediaBloc(PostsUploadMediaState initialState)
      : super(initialState) {
    on<PostsUploadMediaInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PostsUploadMediaInitialEvent event,
    Emitter<PostsUploadMediaState> emit,
  ) async {
    emit(state.copyWith(
        postsUploadMediaModelObj: state.postsUploadMediaModelObj?.copyWith(
      gridcheckmarkItemList: fillGridcheckmarkItemList(),
    )));
  }

  List<GridcheckmarkItemModel> fillGridcheckmarkItemList() {
    return List.generate(15, (index) => GridcheckmarkItemModel());
  }
}
