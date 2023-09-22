// ignore_for_file: must_be_immutable

part of 'type_comments_bloc.dart';

@immutable
abstract class TypeCommentsEvent extends Equatable {}

class TypeCommentsInitialEvent extends TypeCommentsEvent {
  @override
  List<Object?> get props => [];
}
