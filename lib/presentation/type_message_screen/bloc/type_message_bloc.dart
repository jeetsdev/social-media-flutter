import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:ranjeet_social_media/presentation/type_message_screen/models/type_message_model.dart';part 'type_message_event.dart';part 'type_message_state.dart';class TypeMessageBloc extends Bloc<TypeMessageEvent, TypeMessageState> {TypeMessageBloc(TypeMessageState initialState) : super(initialState) { on<TypeMessageInitialEvent>(_onInitialize); }

_onInitialize(TypeMessageInitialEvent event, Emitter<TypeMessageState> emit, ) async  { emit(state.copyWith(frameController: TextEditingController())); } 
 }
