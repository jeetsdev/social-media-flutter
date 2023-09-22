import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/seelive_item_model.dart';import 'package:ranjeet_social_media/presentation/see_live_screen/models/see_live_model.dart';part 'see_live_event.dart';part 'see_live_state.dart';class SeeLiveBloc extends Bloc<SeeLiveEvent, SeeLiveState> {SeeLiveBloc(SeeLiveState initialState) : super(initialState) { on<SeeLiveInitialEvent>(_onInitialize); }

List<SeeliveItemModel> fillSeeliveItemList() { return List.generate(6, (index) => SeeliveItemModel()); } 
_onInitialize(SeeLiveInitialEvent event, Emitter<SeeLiveState> emit, ) async  { emit(state.copyWith(statusDefaultController: TextEditingController())); emit(state.copyWith(seeLiveModelObj: state.seeLiveModelObj?.copyWith(seeliveItemList: fillSeeliveItemList()))); } 
 }
