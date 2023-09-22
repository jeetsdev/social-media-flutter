// ignore_for_file: must_be_immutable

part of 'trending_sounds_bloc.dart';

@immutable
abstract class TrendingSoundsEvent extends Equatable {}

class TrendingSoundsInitialEvent extends TrendingSoundsEvent {
  @override
  List<Object?> get props => [];
}
