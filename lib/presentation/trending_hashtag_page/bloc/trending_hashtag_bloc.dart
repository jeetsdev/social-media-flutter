import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listplay3_item_model.dart';
import '../models/listplay4_item_model.dart';
import 'package:ranjeet_social_media/presentation/trending_hashtag_page/models/trending_hashtag_model.dart';
part 'trending_hashtag_event.dart';
part 'trending_hashtag_state.dart';

class TrendingHashtagBloc
    extends Bloc<TrendingHashtagEvent, TrendingHashtagState> {
  TrendingHashtagBloc(TrendingHashtagState initialState) : super(initialState) {
    on<TrendingHashtagInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TrendingHashtagInitialEvent event,
    Emitter<TrendingHashtagState> emit,
  ) async {
    emit(state.copyWith(
        trendingHashtagModelObj: state.trendingHashtagModelObj?.copyWith(
      listplay3ItemList: fillListplay3ItemList(),
      listplay4ItemList: fillListplay4ItemList(),
    )));
  }

  List<Listplay3ItemModel> fillListplay3ItemList() {
    return List.generate(3, (index) => Listplay3ItemModel());
  }

  List<Listplay4ItemModel> fillListplay4ItemList() {
    return List.generate(3, (index) => Listplay4ItemModel());
  }
}
