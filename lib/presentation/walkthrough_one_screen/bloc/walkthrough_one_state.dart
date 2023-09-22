// ignore_for_file: must_be_immutable

part of 'walkthrough_one_bloc.dart';

class WalkthroughOneState extends Equatable {
  WalkthroughOneState({this.walkthroughOneModelObj});

  WalkthroughOneModel? walkthroughOneModelObj;

  @override
  List<Object?> get props => [
        walkthroughOneModelObj,
      ];
  WalkthroughOneState copyWith({WalkthroughOneModel? walkthroughOneModelObj}) {
    return WalkthroughOneState(
      walkthroughOneModelObj:
          walkthroughOneModelObj ?? this.walkthroughOneModelObj,
    );
  }
}
