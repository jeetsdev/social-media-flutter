// ignore_for_file: must_be_immutable

part of 'trending_sounds_tab_container_bloc.dart';

@immutable
abstract class TrendingSoundsTabContainerEvent extends Equatable {}

class TrendingSoundsTabContainerInitialEvent
    extends TrendingSoundsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
