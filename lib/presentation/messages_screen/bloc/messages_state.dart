// ignore_for_file: must_be_immutable

part of 'messages_bloc.dart';

class MessagesState extends Equatable {
  MessagesState({
    this.stateDefaultSearchController,
    this.messagesModelObj,
  });

  TextEditingController? stateDefaultSearchController;

  MessagesModel? messagesModelObj;

  @override
  List<Object?> get props => [
        stateDefaultSearchController,
        messagesModelObj,
      ];
  MessagesState copyWith({
    TextEditingController? stateDefaultSearchController,
    MessagesModel? messagesModelObj,
  }) {
    return MessagesState(
      stateDefaultSearchController:
          stateDefaultSearchController ?? this.stateDefaultSearchController,
      messagesModelObj: messagesModelObj ?? this.messagesModelObj,
    );
  }
}
