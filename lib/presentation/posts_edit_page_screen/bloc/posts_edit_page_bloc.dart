import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:ranjeet_social_media/presentation/posts_edit_page_screen/models/posts_edit_page_model.dart';part 'posts_edit_page_event.dart';part 'posts_edit_page_state.dart';class PostsEditPageBloc extends Bloc<PostsEditPageEvent, PostsEditPageState> {PostsEditPageBloc(PostsEditPageState initialState) : super(initialState) { on<PostsEditPageInitialEvent>(_onInitialize); }

_onInitialize(PostsEditPageInitialEvent event, Emitter<PostsEditPageState> emit, ) async  {  } 
 }
