// ignore_for_file: must_be_immutable

part of 'type_comments_bloc.dart';

class TypeCommentsState extends Equatable {
  TypeCommentsState({
    this.statusActiveTypeNormalController,
    this.typeCommentsModelObj,
  });

  TextEditingController? statusActiveTypeNormalController;

  TypeCommentsModel? typeCommentsModelObj;

  @override
  List<Object?> get props => [
        statusActiveTypeNormalController,
        typeCommentsModelObj,
      ];
  TypeCommentsState copyWith({
    TextEditingController? statusActiveTypeNormalController,
    TypeCommentsModel? typeCommentsModelObj,
  }) {
    return TypeCommentsState(
      statusActiveTypeNormalController: statusActiveTypeNormalController ??
          this.statusActiveTypeNormalController,
      typeCommentsModelObj: typeCommentsModelObj ?? this.typeCommentsModelObj,
    );
  }
}
