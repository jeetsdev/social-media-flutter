import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:ranjeet_social_media/presentation/set_your_fingerprint_screen/models/set_your_fingerprint_model.dart';part 'set_your_fingerprint_event.dart';part 'set_your_fingerprint_state.dart';class SetYourFingerprintBloc extends Bloc<SetYourFingerprintEvent, SetYourFingerprintState> {SetYourFingerprintBloc(SetYourFingerprintState initialState) : super(initialState) { on<SetYourFingerprintInitialEvent>(_onInitialize); }

_onInitialize(SetYourFingerprintInitialEvent event, Emitter<SetYourFingerprintState> emit, ) async  {  } 
 }
