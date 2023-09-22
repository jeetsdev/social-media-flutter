// ignore_for_file: must_be_immutable

part of 'question_answer_bloc.dart';

class QuestionAnswerState extends Equatable {
  QuestionAnswerState({
    this.frameOneController,
    this.questionAnswerModelObj,
  });

  TextEditingController? frameOneController;

  QuestionAnswerModel? questionAnswerModelObj;

  @override
  List<Object?> get props => [
        frameOneController,
        questionAnswerModelObj,
      ];
  QuestionAnswerState copyWith({
    TextEditingController? frameOneController,
    QuestionAnswerModel? questionAnswerModelObj,
  }) {
    return QuestionAnswerState(
      frameOneController: frameOneController ?? this.frameOneController,
      questionAnswerModelObj:
          questionAnswerModelObj ?? this.questionAnswerModelObj,
    );
  }
}
