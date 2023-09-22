// ignore_for_file: must_be_immutable

part of 'messages_box_bloc.dart';

@immutable
abstract class MessagesBoxEvent extends Equatable {}

class MessagesBoxInitialEvent extends MessagesBoxEvent {
  @override
  List<Object?> get props => [];
}
