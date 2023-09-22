// ignore_for_file: must_be_immutable

part of 'weekly_ranking_bloc.dart';

@immutable
abstract class WeeklyRankingEvent extends Equatable {}

class WeeklyRankingInitialEvent extends WeeklyRankingEvent {
  @override
  List<Object?> get props => [];
}
