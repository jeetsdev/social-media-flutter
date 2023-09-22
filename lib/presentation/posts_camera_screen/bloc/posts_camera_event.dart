// ignore_for_file: must_be_immutable

part of 'posts_camera_bloc.dart';

@immutable
abstract class PostsCameraEvent extends Equatable {}

class PostsCameraInitialEvent extends PostsCameraEvent {
  @override
  List<Object?> get props => [];
}
