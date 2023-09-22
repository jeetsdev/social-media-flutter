// ignore_for_file: must_be_immutable

part of 'reset_password_successful_bloc.dart';

@immutable
abstract class ResetPasswordSuccessfulEvent extends Equatable {}

class ResetPasswordSuccessfulInitialEvent extends ResetPasswordSuccessfulEvent {
  @override
  List<Object?> get props => [];
}
