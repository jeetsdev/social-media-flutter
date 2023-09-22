// ignore_for_file: must_be_immutable

part of 'go_live_together_bloc.dart';

class GoLiveTogetherState extends Equatable {
  GoLiveTogetherState({this.goLiveTogetherModelObj});

  GoLiveTogetherModel? goLiveTogetherModelObj;

  @override
  List<Object?> get props => [
        goLiveTogetherModelObj,
      ];
  GoLiveTogetherState copyWith({GoLiveTogetherModel? goLiveTogetherModelObj}) {
    return GoLiveTogetherState(
      goLiveTogetherModelObj:
          goLiveTogetherModelObj ?? this.goLiveTogetherModelObj,
    );
  }
}
