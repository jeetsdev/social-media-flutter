// ignore_for_file: must_be_immutable

part of 'posts_edit_page_bloc.dart';

@immutable
abstract class PostsEditPageEvent extends Equatable {}

class PostsEditPageInitialEvent extends PostsEditPageEvent {
  @override
  List<Object?> get props => [];
}
