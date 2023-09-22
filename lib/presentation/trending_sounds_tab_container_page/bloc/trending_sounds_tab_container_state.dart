// ignore_for_file: must_be_immutable

part of 'trending_sounds_tab_container_bloc.dart';

class TrendingSoundsTabContainerState extends Equatable {
  TrendingSoundsTabContainerState({this.trendingSoundsTabContainerModelObj});

  TrendingSoundsTabContainerModel? trendingSoundsTabContainerModelObj;

  @override
  List<Object?> get props => [
        trendingSoundsTabContainerModelObj,
      ];
  TrendingSoundsTabContainerState copyWith(
      {TrendingSoundsTabContainerModel? trendingSoundsTabContainerModelObj}) {
    return TrendingSoundsTabContainerState(
      trendingSoundsTabContainerModelObj: trendingSoundsTabContainerModelObj ??
          this.trendingSoundsTabContainerModelObj,
    );
  }
}
