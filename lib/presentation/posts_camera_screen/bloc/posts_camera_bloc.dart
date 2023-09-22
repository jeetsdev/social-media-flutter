import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:ranjeet_social_media/presentation/posts_camera_screen/models/posts_camera_model.dart';part 'posts_camera_event.dart';part 'posts_camera_state.dart';class PostsCameraBloc extends Bloc<PostsCameraEvent, PostsCameraState> {PostsCameraBloc(PostsCameraState initialState) : super(initialState) { on<PostsCameraInitialEvent>(_onInitialize); }

_onInitialize(PostsCameraInitialEvent event, Emitter<PostsCameraState> emit, ) async  {  } 
 }
