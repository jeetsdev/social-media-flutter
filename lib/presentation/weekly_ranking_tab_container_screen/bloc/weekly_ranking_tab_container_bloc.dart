import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ranjeet_social_media/presentation/weekly_ranking_tab_container_screen/models/weekly_ranking_tab_container_model.dart';
part 'weekly_ranking_tab_container_event.dart';
part 'weekly_ranking_tab_container_state.dart';

class WeeklyRankingTabContainerBloc extends Bloc<WeeklyRankingTabContainerEvent,
    WeeklyRankingTabContainerState> {
  WeeklyRankingTabContainerBloc(WeeklyRankingTabContainerState initialState)
      : super(initialState) {
    on<WeeklyRankingTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WeeklyRankingTabContainerInitialEvent event,
    Emitter<WeeklyRankingTabContainerState> emit,
  ) async {}
}
