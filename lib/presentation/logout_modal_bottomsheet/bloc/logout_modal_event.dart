// ignore_for_file: must_be_immutable

part of 'logout_modal_bloc.dart';

@immutable
abstract class LogoutModalEvent extends Equatable {}

class LogoutModalInitialEvent extends LogoutModalEvent {
  @override
  List<Object?> get props => [];
}
