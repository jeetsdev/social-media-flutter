// ignore_for_file: must_be_immutable

part of 'when_is_your_birthday_bloc.dart';

class WhenIsYourBirthdayState extends Equatable {
  WhenIsYourBirthdayState({this.whenIsYourBirthdayModelObj});

  WhenIsYourBirthdayModel? whenIsYourBirthdayModelObj;

  @override
  List<Object?> get props => [
        whenIsYourBirthdayModelObj,
      ];
  WhenIsYourBirthdayState copyWith(
      {WhenIsYourBirthdayModel? whenIsYourBirthdayModelObj}) {
    return WhenIsYourBirthdayState(
      whenIsYourBirthdayModelObj:
          whenIsYourBirthdayModelObj ?? this.whenIsYourBirthdayModelObj,
    );
  }
}
