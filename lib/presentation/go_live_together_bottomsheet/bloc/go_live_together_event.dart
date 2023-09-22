// ignore_for_file: must_be_immutable

part of 'go_live_together_bloc.dart';

@immutable
abstract class GoLiveTogetherEvent extends Equatable {}

class GoLiveTogetherInitialEvent extends GoLiveTogetherEvent {
  @override
  List<Object?> get props => [];
}
