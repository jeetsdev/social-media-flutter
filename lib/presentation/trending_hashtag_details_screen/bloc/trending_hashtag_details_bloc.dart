import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/gridplay2_item_model.dart';import 'package:ranjeet_social_media/presentation/trending_hashtag_details_screen/models/trending_hashtag_details_model.dart';part 'trending_hashtag_details_event.dart';part 'trending_hashtag_details_state.dart';class TrendingHashtagDetailsBloc extends Bloc<TrendingHashtagDetailsEvent, TrendingHashtagDetailsState> {TrendingHashtagDetailsBloc(TrendingHashtagDetailsState initialState) : super(initialState) { on<TrendingHashtagDetailsInitialEvent>(_onInitialize); }

_onInitialize(TrendingHashtagDetailsInitialEvent event, Emitter<TrendingHashtagDetailsState> emit, ) async  { emit(state.copyWith(trendingHashtagDetailsModelObj: state.trendingHashtagDetailsModelObj?.copyWith(gridplay2ItemList: fillGridplay2ItemList()))); } 
List<Gridplay2ItemModel> fillGridplay2ItemList() { return List.generate(9, (index) => Gridplay2ItemModel()); } 
 }
