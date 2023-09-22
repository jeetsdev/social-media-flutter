import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:ranjeet_social_media/presentation/messages_box_screen/models/messages_box_model.dart';part 'messages_box_event.dart';part 'messages_box_state.dart';class MessagesBoxBloc extends Bloc<MessagesBoxEvent, MessagesBoxState> {MessagesBoxBloc(MessagesBoxState initialState) : super(initialState) { on<MessagesBoxInitialEvent>(_onInitialize); }

_onInitialize(MessagesBoxInitialEvent event, Emitter<MessagesBoxState> emit, ) async  { emit(state.copyWith(frameController: TextEditingController())); } 
 }
