// ignore_for_file: must_be_immutable

part of 'manage_accounts_bloc.dart';

@immutable
abstract class ManageAccountsEvent extends Equatable {}

class ManageAccountsInitialEvent extends ManageAccountsEvent {
  @override
  List<Object?> get props => [];
}
