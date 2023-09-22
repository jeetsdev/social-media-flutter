// ignore_for_file: must_be_immutable

part of 'type_message_bloc.dart';

class TypeMessageState extends Equatable {
  TypeMessageState({
    this.frameController,
    this.typeMessageModelObj,
  });

  TextEditingController? frameController;

  TypeMessageModel? typeMessageModelObj;

  @override
  List<Object?> get props => [
        frameController,
        typeMessageModelObj,
      ];
  TypeMessageState copyWith({
    TextEditingController? frameController,
    TypeMessageModel? typeMessageModelObj,
  }) {
    return TypeMessageState(
      frameController: frameController ?? this.frameController,
      typeMessageModelObj: typeMessageModelObj ?? this.typeMessageModelObj,
    );
  }
}
