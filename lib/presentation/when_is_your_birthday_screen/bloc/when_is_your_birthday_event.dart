// ignore_for_file: must_be_immutable

part of 'when_is_your_birthday_bloc.dart';

@immutable
abstract class WhenIsYourBirthdayEvent extends Equatable {}

class WhenIsYourBirthdayInitialEvent extends WhenIsYourBirthdayEvent {
  @override
  List<Object?> get props => [];
}

///event for change date
class ChangeDateEvent extends WhenIsYourBirthdayEvent {
  ChangeDateEvent({required this.date});

  String date;

  @override
  List<Object?> get props => [
        date,
      ];
}
