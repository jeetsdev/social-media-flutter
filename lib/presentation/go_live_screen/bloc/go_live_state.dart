// ignore_for_file: must_be_immutable

part of 'go_live_bloc.dart';

class GoLiveState extends Equatable {
  GoLiveState({this.goLiveModelObj});

  GoLiveModel? goLiveModelObj;

  @override
  List<Object?> get props => [
        goLiveModelObj,
      ];
  GoLiveState copyWith({GoLiveModel? goLiveModelObj}) {
    return GoLiveState(
      goLiveModelObj: goLiveModelObj ?? this.goLiveModelObj,
    );
  }
}
