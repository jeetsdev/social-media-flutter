import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:ranjeet_social_media/presentation/posts_quick_video_screen/models/posts_quick_video_model.dart';part 'posts_quick_video_event.dart';part 'posts_quick_video_state.dart';class PostsQuickVideoBloc extends Bloc<PostsQuickVideoEvent, PostsQuickVideoState> {PostsQuickVideoBloc(PostsQuickVideoState initialState) : super(initialState) { on<PostsQuickVideoInitialEvent>(_onInitialize); }

_onInitialize(PostsQuickVideoInitialEvent event, Emitter<PostsQuickVideoState> emit, ) async  {  } 
 }
