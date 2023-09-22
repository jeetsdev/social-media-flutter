// ignore_for_file: must_be_immutable

part of 'rising_stars_bloc.dart';

@immutable
abstract class RisingStarsEvent extends Equatable {}

class RisingStarsInitialEvent extends RisingStarsEvent {
  @override
  List<Object?> get props => [];
}
