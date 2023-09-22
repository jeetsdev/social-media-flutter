import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:ranjeet_social_media/presentation/walkthrough_one_screen/models/walkthrough_one_model.dart';part 'walkthrough_one_event.dart';part 'walkthrough_one_state.dart';class WalkthroughOneBloc extends Bloc<WalkthroughOneEvent, WalkthroughOneState> {WalkthroughOneBloc(WalkthroughOneState initialState) : super(initialState) { on<WalkthroughOneInitialEvent>(_onInitialize); }

_onInitialize(WalkthroughOneInitialEvent event, Emitter<WalkthroughOneState> emit, ) async  {  } 
 }
