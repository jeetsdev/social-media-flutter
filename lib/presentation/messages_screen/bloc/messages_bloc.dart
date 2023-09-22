import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/listellipse7_item_model.dart';import '../models/listmessage_item_model.dart';import 'package:ranjeet_social_media/presentation/messages_screen/models/messages_model.dart';part 'messages_event.dart';part 'messages_state.dart';class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {MessagesBloc(MessagesState initialState) : super(initialState) { on<MessagesInitialEvent>(_onInitialize); }

List<Listellipse7ItemModel> fillListellipse7ItemList() { return List.generate(5, (index) => Listellipse7ItemModel()); } 
List<ListmessageItemModel> fillListmessageItemList() { return List.generate(6, (index) => ListmessageItemModel()); } 
_onInitialize(MessagesInitialEvent event, Emitter<MessagesState> emit, ) async  { emit(state.copyWith(stateDefaultSearchController: TextEditingController())); emit(state.copyWith(messagesModelObj: state.messagesModelObj?.copyWith(listellipse7ItemList: fillListellipse7ItemList(), listmessageItemList: fillListmessageItemList()))); } 
 }
