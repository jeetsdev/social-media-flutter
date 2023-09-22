import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listellipse2_item_model.dart';
import 'package:ranjeet_social_media/presentation/rising_stars_page/models/rising_stars_model.dart';
part 'rising_stars_event.dart';
part 'rising_stars_state.dart';

class RisingStarsBloc extends Bloc<RisingStarsEvent, RisingStarsState> {
  RisingStarsBloc(RisingStarsState initialState) : super(initialState) {
    on<RisingStarsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RisingStarsInitialEvent event,
    Emitter<RisingStarsState> emit,
  ) async {
    emit(state.copyWith(
        risingStarsModelObj: state.risingStarsModelObj?.copyWith(
      listellipse2ItemList: fillListellipse2ItemList(),
    )));
  }

  List<Listellipse2ItemModel> fillListellipse2ItemList() {
    return List.generate(4, (index) => Listellipse2ItemModel());
  }
}
