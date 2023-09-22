// ignore_for_file: must_be_immutable

part of 'qr_code_bloc.dart';

class QrCodeState extends Equatable {
  QrCodeState({this.qrCodeModelObj});

  QrCodeModel? qrCodeModelObj;

  @override
  List<Object?> get props => [
        qrCodeModelObj,
      ];
  QrCodeState copyWith({QrCodeModel? qrCodeModelObj}) {
    return QrCodeState(
      qrCodeModelObj: qrCodeModelObj ?? this.qrCodeModelObj,
    );
  }
}
