// ignore_for_file: must_be_immutable

part of 'total_likes_bloc.dart';

class TotalLikesState extends Equatable {
  TotalLikesState({this.totalLikesModelObj});

  TotalLikesModel? totalLikesModelObj;

  @override
  List<Object?> get props => [
        totalLikesModelObj,
      ];
  TotalLikesState copyWith({TotalLikesModel? totalLikesModelObj}) {
    return TotalLikesState(
      totalLikesModelObj: totalLikesModelObj ?? this.totalLikesModelObj,
    );
  }
}
