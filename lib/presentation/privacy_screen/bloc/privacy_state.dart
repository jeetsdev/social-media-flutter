// ignore_for_file: must_be_immutable

part of 'privacy_bloc.dart';

class PrivacyState extends Equatable {
  PrivacyState({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.privacyModelObj,
  });

  PrivacyModel? privacyModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        privacyModelObj,
      ];
  PrivacyState copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    PrivacyModel? privacyModelObj,
  }) {
    return PrivacyState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      privacyModelObj: privacyModelObj ?? this.privacyModelObj,
    );
  }
}
