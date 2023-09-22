// ignore_for_file: must_be_immutable

part of 'posts_upload_media_bloc.dart';

@immutable
abstract class PostsUploadMediaEvent extends Equatable {}

class PostsUploadMediaInitialEvent extends PostsUploadMediaEvent {
  @override
  List<Object?> get props => [];
}
