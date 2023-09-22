import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:ranjeet_social_media/presentation/followers_tab_container_screen/models/followers_tab_container_model.dart';part 'followers_tab_container_event.dart';part 'followers_tab_container_state.dart';class FollowersTabContainerBloc extends Bloc<FollowersTabContainerEvent, FollowersTabContainerState> {FollowersTabContainerBloc(FollowersTabContainerState initialState) : super(initialState) { on<FollowersTabContainerInitialEvent>(_onInitialize); }

_onInitialize(FollowersTabContainerInitialEvent event, Emitter<FollowersTabContainerState> emit, ) async  {  } 
 }
