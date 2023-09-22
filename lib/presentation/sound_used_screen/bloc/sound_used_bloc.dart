import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/soundused_item_model.dart';import 'package:ranjeet_social_media/presentation/sound_used_screen/models/sound_used_model.dart';part 'sound_used_event.dart';part 'sound_used_state.dart';class SoundUsedBloc extends Bloc<SoundUsedEvent, SoundUsedState> {SoundUsedBloc(SoundUsedState initialState) : super(initialState) { on<SoundUsedInitialEvent>(_onInitialize); }

_onInitialize(SoundUsedInitialEvent event, Emitter<SoundUsedState> emit, ) async  { emit(state.copyWith(soundUsedModelObj: state.soundUsedModelObj?.copyWith(soundusedItemList: fillSoundusedItemList()))); } 
List<SoundusedItemModel> fillSoundusedItemList() { return List.generate(6, (index) => SoundusedItemModel()); } 
 }
