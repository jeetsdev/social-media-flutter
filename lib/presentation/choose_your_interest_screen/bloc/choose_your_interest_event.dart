// ignore_for_file: must_be_immutable

part of 'choose_your_interest_bloc.dart';

@immutable
abstract class ChooseYourInterestEvent extends Equatable {}

class ChooseYourInterestInitialEvent extends ChooseYourInterestEvent {
  @override
  List<Object?> get props => [];
}

///event for change ChipView selection
class UpdateChipViewEvent extends ChooseYourInterestEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
