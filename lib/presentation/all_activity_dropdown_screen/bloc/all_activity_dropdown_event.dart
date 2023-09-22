// ignore_for_file: must_be_immutable

part of 'all_activity_dropdown_bloc.dart';

@immutable
abstract class AllActivityDropdownEvent extends Equatable {}

class AllActivityDropdownInitialEvent extends AllActivityDropdownEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class onSelected extends AllActivityDropdownEvent {
  onSelected({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
