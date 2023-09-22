import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:ranjeet_social_media/presentation/posts_upload_media_tab_container_screen/models/posts_upload_media_tab_container_model.dart';part 'posts_upload_media_tab_container_event.dart';part 'posts_upload_media_tab_container_state.dart';class PostsUploadMediaTabContainerBloc extends Bloc<PostsUploadMediaTabContainerEvent, PostsUploadMediaTabContainerState> {PostsUploadMediaTabContainerBloc(PostsUploadMediaTabContainerState initialState) : super(initialState) { on<PostsUploadMediaTabContainerInitialEvent>(_onInitialize); }

_onInitialize(PostsUploadMediaTabContainerInitialEvent event, Emitter<PostsUploadMediaTabContainerState> emit, ) async  {  } 
 }
