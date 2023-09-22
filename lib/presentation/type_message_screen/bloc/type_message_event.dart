// ignore_for_file: must_be_immutable

part of 'type_message_bloc.dart';

@immutable
abstract class TypeMessageEvent extends Equatable {}

class TypeMessageInitialEvent extends TypeMessageEvent {
  @override
  List<Object?> get props => [];
}
