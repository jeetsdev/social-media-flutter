// ignore_for_file: must_be_immutable

part of 'trending_hashtag_bloc.dart';

class TrendingHashtagState extends Equatable {
  TrendingHashtagState({this.trendingHashtagModelObj});

  TrendingHashtagModel? trendingHashtagModelObj;

  @override
  List<Object?> get props => [
        trendingHashtagModelObj,
      ];
  TrendingHashtagState copyWith(
      {TrendingHashtagModel? trendingHashtagModelObj}) {
    return TrendingHashtagState(
      trendingHashtagModelObj:
          trendingHashtagModelObj ?? this.trendingHashtagModelObj,
    );
  }
}
