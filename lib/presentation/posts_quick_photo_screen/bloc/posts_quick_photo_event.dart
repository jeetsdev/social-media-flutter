// ignore_for_file: must_be_immutable

part of 'posts_quick_photo_bloc.dart';

@immutable
abstract class PostsQuickPhotoEvent extends Equatable {}

class PostsQuickPhotoInitialEvent extends PostsQuickPhotoEvent {
  @override
  List<Object?> get props => [];
}
