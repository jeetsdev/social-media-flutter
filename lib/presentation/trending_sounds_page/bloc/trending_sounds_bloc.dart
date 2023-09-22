import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listplay1_item_model.dart';
import '../models/listplay2_item_model.dart';
import 'package:ranjeet_social_media/presentation/trending_sounds_page/models/trending_sounds_model.dart';
part 'trending_sounds_event.dart';
part 'trending_sounds_state.dart';

class TrendingSoundsBloc
    extends Bloc<TrendingSoundsEvent, TrendingSoundsState> {
  TrendingSoundsBloc(TrendingSoundsState initialState) : super(initialState) {
    on<TrendingSoundsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TrendingSoundsInitialEvent event,
    Emitter<TrendingSoundsState> emit,
  ) async {
    emit(state.copyWith(
        trendingSoundsModelObj: state.trendingSoundsModelObj?.copyWith(
      listplay1ItemList: fillListplay1ItemList(),
      listplay2ItemList: fillListplay2ItemList(),
    )));
  }

  List<Listplay1ItemModel> fillListplay1ItemList() {
    return List.generate(3, (index) => Listplay1ItemModel());
  }

  List<Listplay2ItemModel> fillListplay2ItemList() {
    return List.generate(3, (index) => Listplay2ItemModel());
  }
}
