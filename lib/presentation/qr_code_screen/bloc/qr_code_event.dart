// ignore_for_file: must_be_immutable

part of 'qr_code_bloc.dart';

@immutable
abstract class QrCodeEvent extends Equatable {}

class QrCodeInitialEvent extends QrCodeEvent {
  @override
  List<Object?> get props => [];
}
