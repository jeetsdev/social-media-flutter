// ignore_for_file: must_be_immutable

part of 'weekly_ranking_tab_container_bloc.dart';

@immutable
abstract class WeeklyRankingTabContainerEvent extends Equatable {}

class WeeklyRankingTabContainerInitialEvent
    extends WeeklyRankingTabContainerEvent {
  @override
  List<Object?> get props => [];
}
