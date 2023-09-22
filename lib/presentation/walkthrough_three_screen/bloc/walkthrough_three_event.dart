// ignore_for_file: must_be_immutable

part of 'walkthrough_three_bloc.dart';

@immutable
abstract class WalkthroughThreeEvent extends Equatable {}

class WalkthroughThreeInitialEvent extends WalkthroughThreeEvent {
  @override
  List<Object?> get props => [];
}
