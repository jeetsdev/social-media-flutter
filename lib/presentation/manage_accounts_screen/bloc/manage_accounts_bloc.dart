import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:ranjeet_social_media/presentation/manage_accounts_screen/models/manage_accounts_model.dart';part 'manage_accounts_event.dart';part 'manage_accounts_state.dart';class ManageAccountsBloc extends Bloc<ManageAccountsEvent, ManageAccountsState> {ManageAccountsBloc(ManageAccountsState initialState) : super(initialState) { on<ManageAccountsInitialEvent>(_onInitialize); }

_onInitialize(ManageAccountsInitialEvent event, Emitter<ManageAccountsState> emit, ) async  {  } 
 }
