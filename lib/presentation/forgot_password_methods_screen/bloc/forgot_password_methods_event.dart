// ignore_for_file: must_be_immutable

part of 'forgot_password_methods_bloc.dart';

@immutable
abstract class ForgotPasswordMethodsEvent extends Equatable {}

class ForgotPasswordMethodsInitialEvent extends ForgotPasswordMethodsEvent {
  @override
  List<Object?> get props => [];
}
