import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/gridplay1_item_model.dart';import 'package:ranjeet_social_media/presentation/trending_sounds_details_screen/models/trending_sounds_details_model.dart';part 'trending_sounds_details_event.dart';part 'trending_sounds_details_state.dart';class TrendingSoundsDetailsBloc extends Bloc<TrendingSoundsDetailsEvent, TrendingSoundsDetailsState> {TrendingSoundsDetailsBloc(TrendingSoundsDetailsState initialState) : super(initialState) { on<TrendingSoundsDetailsInitialEvent>(_onInitialize); }

_onInitialize(TrendingSoundsDetailsInitialEvent event, Emitter<TrendingSoundsDetailsState> emit, ) async  { emit(state.copyWith(trendingSoundsDetailsModelObj: state.trendingSoundsDetailsModelObj?.copyWith(gridplay1ItemList: fillGridplay1ItemList()))); } 
List<Gridplay1ItemModel> fillGridplay1ItemList() { return List.generate(6, (index) => Gridplay1ItemModel()); } 
 }
