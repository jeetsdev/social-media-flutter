import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ranjeet_social_media/presentation/trending_sounds_tab_container_page/models/trending_sounds_tab_container_model.dart';
part 'trending_sounds_tab_container_event.dart';
part 'trending_sounds_tab_container_state.dart';

class TrendingSoundsTabContainerBloc extends Bloc<
    TrendingSoundsTabContainerEvent, TrendingSoundsTabContainerState> {
  TrendingSoundsTabContainerBloc(TrendingSoundsTabContainerState initialState)
      : super(initialState) {
    on<TrendingSoundsTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TrendingSoundsTabContainerInitialEvent event,
    Emitter<TrendingSoundsTabContainerState> emit,
  ) async {}
}
