// ignore_for_file: must_be_immutable

part of 'total_likes_bloc.dart';

@immutable
abstract class TotalLikesEvent extends Equatable {}

class TotalLikesInitialEvent extends TotalLikesEvent {
  @override
  List<Object?> get props => [];
}
