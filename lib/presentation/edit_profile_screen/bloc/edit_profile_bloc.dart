import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:ranjeet_social_media/presentation/edit_profile_screen/models/edit_profile_model.dart';part 'edit_profile_event.dart';part 'edit_profile_state.dart';class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {EditProfileBloc(EditProfileState initialState) : super(initialState) { on<EditProfileInitialEvent>(_onInitialize); }

_onInitialize(EditProfileInitialEvent event, Emitter<EditProfileState> emit, ) async  {  } 
 }
