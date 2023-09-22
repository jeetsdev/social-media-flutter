// ignore_for_file: must_be_immutable

part of 'posts_add_sounds_bloc.dart';

@immutable
abstract class PostsAddSoundsEvent extends Equatable {}

class PostsAddSoundsInitialEvent extends PostsAddSoundsEvent {
  @override
  List<Object?> get props => [];
}
