// ignore_for_file: must_be_immutable

part of 'comments_bloc.dart';

class CommentsState extends Equatable {
  CommentsState({
    this.statusDefaultController,
    this.commentsModelObj,
  });

  TextEditingController? statusDefaultController;

  CommentsModel? commentsModelObj;

  @override
  List<Object?> get props => [
        statusDefaultController,
        commentsModelObj,
      ];
  CommentsState copyWith({
    TextEditingController? statusDefaultController,
    CommentsModel? commentsModelObj,
  }) {
    return CommentsState(
      statusDefaultController:
          statusDefaultController ?? this.statusDefaultController,
      commentsModelObj: commentsModelObj ?? this.commentsModelObj,
    );
  }
}
