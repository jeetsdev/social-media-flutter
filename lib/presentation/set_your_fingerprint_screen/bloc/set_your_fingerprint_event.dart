// ignore_for_file: must_be_immutable

part of 'set_your_fingerprint_bloc.dart';

@immutable
abstract class SetYourFingerprintEvent extends Equatable {}

class SetYourFingerprintInitialEvent extends SetYourFingerprintEvent {
  @override
  List<Object?> get props => [];
}
