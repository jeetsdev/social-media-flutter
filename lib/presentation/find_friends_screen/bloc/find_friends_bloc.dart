import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/listreply_item_model.dart';import '../models/listellipse8_item_model.dart';import 'package:ranjeet_social_media/presentation/find_friends_screen/models/find_friends_model.dart';part 'find_friends_event.dart';part 'find_friends_state.dart';class FindFriendsBloc extends Bloc<FindFriendsEvent, FindFriendsState> {FindFriendsBloc(FindFriendsState initialState) : super(initialState) { on<FindFriendsInitialEvent>(_onInitialize); }

List<ListreplyItemModel> fillListreplyItemList() { return List.generate(4, (index) => ListreplyItemModel()); } 
List<Listellipse8ItemModel> fillListellipse8ItemList() { return List.generate(4, (index) => Listellipse8ItemModel()); } 
_onInitialize(FindFriendsInitialEvent event, Emitter<FindFriendsState> emit, ) async  { emit(state.copyWith(stateDefaultSearchController: TextEditingController())); emit(state.copyWith(findFriendsModelObj: state.findFriendsModelObj?.copyWith(listreplyItemList: fillListreplyItemList(), listellipse8ItemList: fillListellipse8ItemList()))); } 
 }
