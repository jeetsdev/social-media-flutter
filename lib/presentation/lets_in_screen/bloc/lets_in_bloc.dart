import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:ranjeet_social_media/presentation/lets_in_screen/models/lets_in_model.dart';part 'lets_in_event.dart';part 'lets_in_state.dart';class LetsInBloc extends Bloc<LetsInEvent, LetsInState> {LetsInBloc(LetsInState initialState) : super(initialState) { on<LetsInInitialEvent>(_onInitialize); }

_onInitialize(LetsInInitialEvent event, Emitter<LetsInState> emit, ) async  {  } 
 }
