import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:ranjeet_social_media/presentation/walkthrough_three_screen/models/walkthrough_three_model.dart';part 'walkthrough_three_event.dart';part 'walkthrough_three_state.dart';class WalkthroughThreeBloc extends Bloc<WalkthroughThreeEvent, WalkthroughThreeState> {WalkthroughThreeBloc(WalkthroughThreeState initialState) : super(initialState) { on<WalkthroughThreeInitialEvent>(_onInitialize); }

_onInitialize(WalkthroughThreeInitialEvent event, Emitter<WalkthroughThreeState> emit, ) async  {  } 
 }
