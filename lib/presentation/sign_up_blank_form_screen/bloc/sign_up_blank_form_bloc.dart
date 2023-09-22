import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:ranjeet_social_media/presentation/sign_up_blank_form_screen/models/sign_up_blank_form_model.dart';part 'sign_up_blank_form_event.dart';part 'sign_up_blank_form_state.dart';class SignUpBlankFormBloc extends Bloc<SignUpBlankFormEvent, SignUpBlankFormState> {SignUpBlankFormBloc(SignUpBlankFormState initialState) : super(initialState) { on<SignUpBlankFormInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); on<ChangeCheckBoxEvent>(_changeCheckBox); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<SignUpBlankFormState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_changeCheckBox(ChangeCheckBoxEvent event, Emitter<SignUpBlankFormState> emit, ) { emit(state.copyWith(isCheckbox: event.value)); } 
_onInitialize(SignUpBlankFormInitialEvent event, Emitter<SignUpBlankFormState> emit, ) async  { emit(state.copyWith(statusDefaultController: TextEditingController(), statusDefaultOneController: TextEditingController(), isShowPassword: true, isCheckbox: false)); } 
 }
