// ignore_for_file: must_be_immutable

part of 'go_live_bloc.dart';

@immutable
abstract class GoLiveEvent extends Equatable {}

class GoLiveInitialEvent extends GoLiveEvent {
  @override
  List<Object?> get props => [];
}
