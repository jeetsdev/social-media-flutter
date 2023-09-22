// ignore_for_file: must_be_immutable

part of 'switch_account_bloc.dart';

class SwitchAccountState extends Equatable {
  SwitchAccountState({this.switchAccountModelObj});

  SwitchAccountModel? switchAccountModelObj;

  @override
  List<Object?> get props => [
        switchAccountModelObj,
      ];
  SwitchAccountState copyWith({SwitchAccountModel? switchAccountModelObj}) {
    return SwitchAccountState(
      switchAccountModelObj:
          switchAccountModelObj ?? this.switchAccountModelObj,
    );
  }
}
