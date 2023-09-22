// ignore_for_file: must_be_immutable

part of 'posts_templates_bloc.dart';

@immutable
abstract class PostsTemplatesEvent extends Equatable {}

class PostsTemplatesInitialEvent extends PostsTemplatesEvent {
  @override
  List<Object?> get props => [];
}
