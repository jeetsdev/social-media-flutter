// ignore_for_file: must_be_immutable

part of 'question_answer_bloc.dart';

@immutable
abstract class QuestionAnswerEvent extends Equatable {}

class QuestionAnswerInitialEvent extends QuestionAnswerEvent {
  @override
  List<Object?> get props => [];
}
