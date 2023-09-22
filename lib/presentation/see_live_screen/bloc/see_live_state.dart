// ignore_for_file: must_be_immutable

part of 'see_live_bloc.dart';

class SeeLiveState extends Equatable {
  SeeLiveState({
    this.statusDefaultController,
    this.seeLiveModelObj,
  });

  TextEditingController? statusDefaultController;

  SeeLiveModel? seeLiveModelObj;

  @override
  List<Object?> get props => [
        statusDefaultController,
        seeLiveModelObj,
      ];
  SeeLiveState copyWith({
    TextEditingController? statusDefaultController,
    SeeLiveModel? seeLiveModelObj,
  }) {
    return SeeLiveState(
      statusDefaultController:
          statusDefaultController ?? this.statusDefaultController,
      seeLiveModelObj: seeLiveModelObj ?? this.seeLiveModelObj,
    );
  }
}
