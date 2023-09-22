// ignore_for_file: must_be_immutable

part of 'set_your_fingerprint_bloc.dart';

class SetYourFingerprintState extends Equatable {
  SetYourFingerprintState({this.setYourFingerprintModelObj});

  SetYourFingerprintModel? setYourFingerprintModelObj;

  @override
  List<Object?> get props => [
        setYourFingerprintModelObj,
      ];
  SetYourFingerprintState copyWith(
      {SetYourFingerprintModel? setYourFingerprintModelObj}) {
    return SetYourFingerprintState(
      setYourFingerprintModelObj:
          setYourFingerprintModelObj ?? this.setYourFingerprintModelObj,
    );
  }
}
