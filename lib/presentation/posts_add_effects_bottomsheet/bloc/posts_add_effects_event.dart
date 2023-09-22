// ignore_for_file: must_be_immutable

part of 'posts_add_effects_bloc.dart';

@immutable
abstract class PostsAddEffectsEvent extends Equatable {}

class PostsAddEffectsInitialEvent extends PostsAddEffectsEvent {
  @override
  List<Object?> get props => [];
}
