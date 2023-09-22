// ignore_for_file: must_be_immutable

part of 'all_activity_bloc.dart';

@immutable
abstract class AllActivityEvent extends Equatable {}

class AllActivityInitialEvent extends AllActivityEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class onSelected extends AllActivityEvent {
  onSelected({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
