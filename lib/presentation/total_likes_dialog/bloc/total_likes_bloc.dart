import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ranjeet_social_media/presentation/total_likes_dialog/models/total_likes_model.dart';
part 'total_likes_event.dart';
part 'total_likes_state.dart';

class TotalLikesBloc extends Bloc<TotalLikesEvent, TotalLikesState> {
  TotalLikesBloc(TotalLikesState initialState) : super(initialState) {
    on<TotalLikesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TotalLikesInitialEvent event,
    Emitter<TotalLikesState> emit,
  ) async {}
}
