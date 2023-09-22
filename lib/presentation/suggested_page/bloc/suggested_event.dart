// ignore_for_file: must_be_immutable

part of 'suggested_bloc.dart';

@immutable
abstract class SuggestedEvent extends Equatable {}

class SuggestedInitialEvent extends SuggestedEvent {
  @override
  List<Object?> get props => [];
}
