// ignore_for_file: must_be_immutable

part of 'weekly_ranking_bloc.dart';

class WeeklyRankingState extends Equatable {
  WeeklyRankingState({this.weeklyRankingModelObj});

  WeeklyRankingModel? weeklyRankingModelObj;

  @override
  List<Object?> get props => [
        weeklyRankingModelObj,
      ];
  WeeklyRankingState copyWith({WeeklyRankingModel? weeklyRankingModelObj}) {
    return WeeklyRankingState(
      weeklyRankingModelObj:
          weeklyRankingModelObj ?? this.weeklyRankingModelObj,
    );
  }
}
