// ignore_for_file: must_be_immutable

part of 'viewers_bloc.dart';

@immutable
abstract class ViewersEvent extends Equatable {}

class ViewersInitialEvent extends ViewersEvent {
  @override
  List<Object?> get props => [];
}
