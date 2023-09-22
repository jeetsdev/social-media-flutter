import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ranjeet_social_media/presentation/account_setup_successful_dialog/models/account_setup_successful_model.dart';
part 'account_setup_successful_event.dart';
part 'account_setup_successful_state.dart';

class AccountSetupSuccessfulBloc
    extends Bloc<AccountSetupSuccessfulEvent, AccountSetupSuccessfulState> {
  AccountSetupSuccessfulBloc(AccountSetupSuccessfulState initialState)
      : super(initialState) {
    on<AccountSetupSuccessfulInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AccountSetupSuccessfulInitialEvent event,
    Emitter<AccountSetupSuccessfulState> emit,
  ) async {}
}
