import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:ranjeet_social_media/presentation/posts_templates_screen/models/posts_templates_model.dart';part 'posts_templates_event.dart';part 'posts_templates_state.dart';class PostsTemplatesBloc extends Bloc<PostsTemplatesEvent, PostsTemplatesState> {PostsTemplatesBloc(PostsTemplatesState initialState) : super(initialState) { on<PostsTemplatesInitialEvent>(_onInitialize); }

_onInitialize(PostsTemplatesInitialEvent event, Emitter<PostsTemplatesState> emit, ) async  {  } 
 }
