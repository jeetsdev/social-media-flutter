// ignore_for_file: must_be_immutable

part of 'viewers_bloc.dart';

class ViewersState extends Equatable {
  ViewersState({
    this.stateDefaultSearchController,
    this.viewersModelObj,
  });

  TextEditingController? stateDefaultSearchController;

  ViewersModel? viewersModelObj;

  @override
  List<Object?> get props => [
        stateDefaultSearchController,
        viewersModelObj,
      ];
  ViewersState copyWith({
    TextEditingController? stateDefaultSearchController,
    ViewersModel? viewersModelObj,
  }) {
    return ViewersState(
      stateDefaultSearchController:
          stateDefaultSearchController ?? this.stateDefaultSearchController,
      viewersModelObj: viewersModelObj ?? this.viewersModelObj,
    );
  }
}
