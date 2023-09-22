import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/profiletwo_item_model.dart';import 'package:ranjeet_social_media/presentation/profile_two_page/models/profile_two_model.dart';part 'profile_two_event.dart';part 'profile_two_state.dart';class ProfileTwoBloc extends Bloc<ProfileTwoEvent, ProfileTwoState> {ProfileTwoBloc(ProfileTwoState initialState) : super(initialState) { on<ProfileTwoInitialEvent>(_onInitialize); }

_onInitialize(ProfileTwoInitialEvent event, Emitter<ProfileTwoState> emit, ) async  { emit(state.copyWith(profileTwoModelObj: state.profileTwoModelObj?.copyWith(profiletwoItemList: fillProfiletwoItemList()))); } 
List<ProfiletwoItemModel> fillProfiletwoItemList() { return List.generate(6, (index) => ProfiletwoItemModel()); } 
 }
