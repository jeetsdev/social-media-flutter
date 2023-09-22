// ignore_for_file: must_be_immutable

part of 'forgot_password_filled_otp_bloc.dart';

@immutable
abstract class ForgotPasswordFilledOtpEvent extends Equatable {}

class ForgotPasswordFilledOtpInitialEvent extends ForgotPasswordFilledOtpEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends ForgotPasswordFilledOtpEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
