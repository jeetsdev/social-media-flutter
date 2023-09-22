import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:ranjeet_social_media/presentation/posts_quick_photo_screen/models/posts_quick_photo_model.dart';part 'posts_quick_photo_event.dart';part 'posts_quick_photo_state.dart';class PostsQuickPhotoBloc extends Bloc<PostsQuickPhotoEvent, PostsQuickPhotoState> {PostsQuickPhotoBloc(PostsQuickPhotoState initialState) : super(initialState) { on<PostsQuickPhotoInitialEvent>(_onInitialize); }

_onInitialize(PostsQuickPhotoInitialEvent event, Emitter<PostsQuickPhotoState> emit, ) async  {  } 
 }
