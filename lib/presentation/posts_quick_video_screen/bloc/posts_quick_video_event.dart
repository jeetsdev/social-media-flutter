// ignore_for_file: must_be_immutable

part of 'posts_quick_video_bloc.dart';

@immutable
abstract class PostsQuickVideoEvent extends Equatable {}

class PostsQuickVideoInitialEvent extends PostsQuickVideoEvent {
  @override
  List<Object?> get props => [];
}
