// ignore_for_file: must_be_immutable

part of 'forgot_password_type_otp_bloc.dart';

@immutable
abstract class ForgotPasswordTypeOtpEvent extends Equatable {}

class ForgotPasswordTypeOtpInitialEvent extends ForgotPasswordTypeOtpEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends ForgotPasswordTypeOtpEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
