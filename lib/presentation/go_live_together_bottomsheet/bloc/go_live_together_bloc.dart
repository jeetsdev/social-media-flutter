import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listellipse3_item_model.dart';
import 'package:ranjeet_social_media/presentation/go_live_together_bottomsheet/models/go_live_together_model.dart';
part 'go_live_together_event.dart';
part 'go_live_together_state.dart';

class GoLiveTogetherBloc
    extends Bloc<GoLiveTogetherEvent, GoLiveTogetherState> {
  GoLiveTogetherBloc(GoLiveTogetherState initialState) : super(initialState) {
    on<GoLiveTogetherInitialEvent>(_onInitialize);
  }

  _onInitialize(
    GoLiveTogetherInitialEvent event,
    Emitter<GoLiveTogetherState> emit,
  ) async {
    emit(state.copyWith(
        goLiveTogetherModelObj: state.goLiveTogetherModelObj?.copyWith(
      listellipse3ItemList: fillListellipse3ItemList(),
    )));
  }

  List<Listellipse3ItemModel> fillListellipse3ItemList() {
    return List.generate(3, (index) => Listellipse3ItemModel());
  }
}
