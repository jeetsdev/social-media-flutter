// ignore_for_file: must_be_immutable

part of 'trending_sounds_details_bloc.dart';

@immutable
abstract class TrendingSoundsDetailsEvent extends Equatable {}

class TrendingSoundsDetailsInitialEvent extends TrendingSoundsDetailsEvent {
  @override
  List<Object?> get props => [];
}
