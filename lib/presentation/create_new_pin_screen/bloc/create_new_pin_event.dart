// ignore_for_file: must_be_immutable

part of 'create_new_pin_bloc.dart';

@immutable
abstract class CreateNewPinEvent extends Equatable {}

class CreateNewPinInitialEvent extends CreateNewPinEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends CreateNewPinEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
