// ignore_for_file: must_be_immutable

part of 'account_setup_successful_bloc.dart';

@immutable
abstract class AccountSetupSuccessfulEvent extends Equatable {}

class AccountSetupSuccessfulInitialEvent extends AccountSetupSuccessfulEvent {
  @override
  List<Object?> get props => [];
}
