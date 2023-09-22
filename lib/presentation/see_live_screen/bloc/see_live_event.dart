// ignore_for_file: must_be_immutable

part of 'see_live_bloc.dart';

@immutable
abstract class SeeLiveEvent extends Equatable {}

class SeeLiveInitialEvent extends SeeLiveEvent {
  @override
  List<Object?> get props => [];
}
