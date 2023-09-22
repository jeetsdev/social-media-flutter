// ignore_for_file: must_be_immutable

part of 'send_message_bloc.dart';

class SendMessageState extends Equatable {
  SendMessageState({
    this.statusDefaultController,
    this.sendMessageModelObj,
  });

  TextEditingController? statusDefaultController;

  SendMessageModel? sendMessageModelObj;

  @override
  List<Object?> get props => [
        statusDefaultController,
        sendMessageModelObj,
      ];
  SendMessageState copyWith({
    TextEditingController? statusDefaultController,
    SendMessageModel? sendMessageModelObj,
  }) {
    return SendMessageState(
      statusDefaultController:
          statusDefaultController ?? this.statusDefaultController,
      sendMessageModelObj: sendMessageModelObj ?? this.sendMessageModelObj,
    );
  }
}
