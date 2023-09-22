// ignore_for_file: must_be_immutable

part of 'switch_account_bloc.dart';

@immutable
abstract class SwitchAccountEvent extends Equatable {}

class SwitchAccountInitialEvent extends SwitchAccountEvent {
  @override
  List<Object?> get props => [];
}
