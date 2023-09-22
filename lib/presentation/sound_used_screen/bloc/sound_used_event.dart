// ignore_for_file: must_be_immutable

part of 'sound_used_bloc.dart';

@immutable
abstract class SoundUsedEvent extends Equatable {}

class SoundUsedInitialEvent extends SoundUsedEvent {
  @override
  List<Object?> get props => [];
}
