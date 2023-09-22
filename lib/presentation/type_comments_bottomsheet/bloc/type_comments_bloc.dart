import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/comments1_item_model.dart';
import 'package:ranjeet_social_media/presentation/type_comments_bottomsheet/models/type_comments_model.dart';
part 'type_comments_event.dart';
part 'type_comments_state.dart';

class TypeCommentsBloc extends Bloc<TypeCommentsEvent, TypeCommentsState> {
  TypeCommentsBloc(TypeCommentsState initialState) : super(initialState) {
    on<TypeCommentsInitialEvent>(_onInitialize);
  }

  List<Comments1ItemModel> fillComments1ItemList() {
    return List.generate(3, (index) => Comments1ItemModel());
  }

  _onInitialize(
    TypeCommentsInitialEvent event,
    Emitter<TypeCommentsState> emit,
  ) async {
    emit(state.copyWith(
      statusActiveTypeNormalController: TextEditingController(),
    ));
    emit(state.copyWith(
        typeCommentsModelObj: state.typeCommentsModelObj?.copyWith(
      comments1ItemList: fillComments1ItemList(),
    )));
  }
}
