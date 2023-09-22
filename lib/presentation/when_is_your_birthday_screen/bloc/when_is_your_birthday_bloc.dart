import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/listnov_item_model.dart';import 'package:ranjeet_social_media/presentation/when_is_your_birthday_screen/models/when_is_your_birthday_model.dart';part 'when_is_your_birthday_event.dart';part 'when_is_your_birthday_state.dart';class WhenIsYourBirthdayBloc extends Bloc<WhenIsYourBirthdayEvent, WhenIsYourBirthdayState> {WhenIsYourBirthdayBloc(WhenIsYourBirthdayState initialState) : super(initialState) { on<WhenIsYourBirthdayInitialEvent>(_onInitialize);on<ChangeDateEvent>(_changeDate); }

_onInitialize(WhenIsYourBirthdayInitialEvent event, Emitter<WhenIsYourBirthdayState> emit, ) async  { emit(state.copyWith(whenIsYourBirthdayModelObj: state.whenIsYourBirthdayModelObj?.copyWith(listnovItemList: fillListnovItemList()))); } 
List<ListnovItemModel> fillListnovItemList() { return List.generate(3, (index) => ListnovItemModel()); } 
_changeDate(ChangeDateEvent event, Emitter<WhenIsYourBirthdayState> emit, ) { emit(state.copyWith(
whenIsYourBirthdayModelObj: state.whenIsYourBirthdayModelObj?.copyWith(
dateTxt: event.date,
))); } 
 }
