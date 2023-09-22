// ignore_for_file: must_be_immutable

part of 'messages_box_bloc.dart';

class MessagesBoxState extends Equatable {
  MessagesBoxState({
    this.frameController,
    this.messagesBoxModelObj,
  });

  TextEditingController? frameController;

  MessagesBoxModel? messagesBoxModelObj;

  @override
  List<Object?> get props => [
        frameController,
        messagesBoxModelObj,
      ];
  MessagesBoxState copyWith({
    TextEditingController? frameController,
    MessagesBoxModel? messagesBoxModelObj,
  }) {
    return MessagesBoxState(
      frameController: frameController ?? this.frameController,
      messagesBoxModelObj: messagesBoxModelObj ?? this.messagesBoxModelObj,
    );
  }
}
