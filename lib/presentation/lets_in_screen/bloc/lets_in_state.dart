// ignore_for_file: must_be_immutable

part of 'lets_in_bloc.dart';

class LetsInState extends Equatable {
  LetsInState({this.letsInModelObj});

  LetsInModel? letsInModelObj;

  @override
  List<Object?> get props => [
        letsInModelObj,
      ];
  LetsInState copyWith({LetsInModel? letsInModelObj}) {
    return LetsInState(
      letsInModelObj: letsInModelObj ?? this.letsInModelObj,
    );
  }
}
