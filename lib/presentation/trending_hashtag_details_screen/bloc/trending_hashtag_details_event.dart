// ignore_for_file: must_be_immutable

part of 'trending_hashtag_details_bloc.dart';

@immutable
abstract class TrendingHashtagDetailsEvent extends Equatable {}

class TrendingHashtagDetailsInitialEvent extends TrendingHashtagDetailsEvent {
  @override
  List<Object?> get props => [];
}
