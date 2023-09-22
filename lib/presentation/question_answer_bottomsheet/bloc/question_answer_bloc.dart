import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listellipse4_item_model.dart';
import 'package:ranjeet_social_media/presentation/question_answer_bottomsheet/models/question_answer_model.dart';
part 'question_answer_event.dart';
part 'question_answer_state.dart';

class QuestionAnswerBloc
    extends Bloc<QuestionAnswerEvent, QuestionAnswerState> {
  QuestionAnswerBloc(QuestionAnswerState initialState) : super(initialState) {
    on<QuestionAnswerInitialEvent>(_onInitialize);
  }

  List<Listellipse4ItemModel> fillListellipse4ItemList() {
    return List.generate(4, (index) => Listellipse4ItemModel());
  }

  _onInitialize(
    QuestionAnswerInitialEvent event,
    Emitter<QuestionAnswerState> emit,
  ) async {
    emit(state.copyWith(
      frameOneController: TextEditingController(),
    ));
    emit(state.copyWith(
        questionAnswerModelObj: state.questionAnswerModelObj?.copyWith(
      listellipse4ItemList: fillListellipse4ItemList(),
    )));
  }
}
