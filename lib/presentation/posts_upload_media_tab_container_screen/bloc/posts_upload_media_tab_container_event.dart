// ignore_for_file: must_be_immutable

part of 'posts_upload_media_tab_container_bloc.dart';

@immutable
abstract class PostsUploadMediaTabContainerEvent extends Equatable {}

class PostsUploadMediaTabContainerInitialEvent
    extends PostsUploadMediaTabContainerEvent {
  @override
  List<Object?> get props => [];
}
