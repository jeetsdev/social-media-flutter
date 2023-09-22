// ignore_for_file: must_be_immutable

part of 'find_friends_bloc.dart';

class FindFriendsState extends Equatable {
  FindFriendsState({
    this.stateDefaultSearchController,
    this.findFriendsModelObj,
  });

  TextEditingController? stateDefaultSearchController;

  FindFriendsModel? findFriendsModelObj;

  @override
  List<Object?> get props => [
        stateDefaultSearchController,
        findFriendsModelObj,
      ];
  FindFriendsState copyWith({
    TextEditingController? stateDefaultSearchController,
    FindFriendsModel? findFriendsModelObj,
  }) {
    return FindFriendsState(
      stateDefaultSearchController:
          stateDefaultSearchController ?? this.stateDefaultSearchController,
      findFriendsModelObj: findFriendsModelObj ?? this.findFriendsModelObj,
    );
  }
}
