// ignore_for_file: must_be_immutable

part of 'walkthrough_one_bloc.dart';

@immutable
abstract class WalkthroughOneEvent extends Equatable {}

class WalkthroughOneInitialEvent extends WalkthroughOneEvent {
  @override
  List<Object?> get props => [];
}
