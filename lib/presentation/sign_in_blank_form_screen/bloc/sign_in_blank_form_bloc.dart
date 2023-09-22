import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:ranjeet_social_media/presentation/sign_in_blank_form_screen/models/sign_in_blank_form_model.dart';part 'sign_in_blank_form_event.dart';part 'sign_in_blank_form_state.dart';class SignInBlankFormBloc extends Bloc<SignInBlankFormEvent, SignInBlankFormState> {SignInBlankFormBloc(SignInBlankFormState initialState) : super(initialState) { on<SignInBlankFormInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); on<ChangeCheckBoxEvent>(_changeCheckBox); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<SignInBlankFormState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_changeCheckBox(ChangeCheckBoxEvent event, Emitter<SignInBlankFormState> emit, ) { emit(state.copyWith(isCheckbox: event.value)); } 
_onInitialize(SignInBlankFormInitialEvent event, Emitter<SignInBlankFormState> emit, ) async  { emit(state.copyWith(statusDefaultController: TextEditingController(), statusDefaultOneController: TextEditingController(), isShowPassword: true, isCheckbox: false)); } 
 }
