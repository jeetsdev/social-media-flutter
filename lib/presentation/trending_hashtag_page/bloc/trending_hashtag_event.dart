// ignore_for_file: must_be_immutable

part of 'trending_hashtag_bloc.dart';

@immutable
abstract class TrendingHashtagEvent extends Equatable {}

class TrendingHashtagInitialEvent extends TrendingHashtagEvent {
  @override
  List<Object?> get props => [];
}
