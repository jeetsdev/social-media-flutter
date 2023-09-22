// ignore_for_file: must_be_immutable

part of 'walkthrough_two_bloc.dart';

@immutable
abstract class WalkthroughTwoEvent extends Equatable {}

class WalkthroughTwoInitialEvent extends WalkthroughTwoEvent {
  @override
  List<Object?> get props => [];
}
