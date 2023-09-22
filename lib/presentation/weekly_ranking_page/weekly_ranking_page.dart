import '../weekly_ranking_page/widgets/weeklyranking_item_widget.dart';
import 'bloc/weekly_ranking_bloc.dart';
import 'models/weekly_ranking_model.dart';
import 'models/weeklyranking_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';

// ignore_for_file: must_be_immutable
class WeeklyRankingPage extends StatefulWidget {
  @override
  _WeeklyRankingPageState createState() => _WeeklyRankingPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<WeeklyRankingBloc>(
      create: (context) => WeeklyRankingBloc(WeeklyRankingState(
        weeklyRankingModelObj: WeeklyRankingModel(),
      ))
        ..add(WeeklyRankingInitialEvent()),
      child: WeeklyRankingPage(),
    );
  }
}

class _WeeklyRankingPageState extends State<WeeklyRankingPage>
    with AutomaticKeepAliveClientMixin<WeeklyRankingPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 24,
                  right: 24,
                ),
                child: BlocSelector<WeeklyRankingBloc, WeeklyRankingState,
                    WeeklyRankingModel?>(
                  selector: (state) => state.weeklyRankingModelObj,
                  builder: (context, weeklyRankingModelObj) {
                    return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            24,
                          ),
                        );
                      },
                      itemCount:
                          weeklyRankingModelObj?.weeklyrankingItemList.length ??
                              0,
                      itemBuilder: (context, index) {
                        WeeklyrankingItemModel model = weeklyRankingModelObj
                                ?.weeklyrankingItemList[index] ??
                            WeeklyrankingItemModel();
                        return WeeklyrankingItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
