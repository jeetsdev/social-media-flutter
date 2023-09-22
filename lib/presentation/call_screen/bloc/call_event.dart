// ignore_for_file: must_be_immutable

part of 'call_bloc.dart';

@immutable
abstract class CallEvent extends Equatable {}

class CallInitialEvent extends CallEvent {
  @override
  List<Object?> get props => [];
}
