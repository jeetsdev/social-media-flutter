// ignore_for_file: must_be_immutable

part of 'send_message_bloc.dart';

@immutable
abstract class SendMessageEvent extends Equatable {}

class SendMessageInitialEvent extends SendMessageEvent {
  @override
  List<Object?> get props => [];
}
