import 'bloc/weekly_ranking_tab_container_bloc.dart';
import 'models/weekly_ranking_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';
import 'package:ranjeet_social_media/presentation/rising_stars_page/rising_stars_page.dart';
import 'package:ranjeet_social_media/presentation/weekly_ranking_page/weekly_ranking_page.dart';

class WeeklyRankingTabContainerScreen extends StatefulWidget {
  @override
  _WeeklyRankingTabContainerScreenState createState() =>
      _WeeklyRankingTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<WeeklyRankingTabContainerBloc>(
      create: (context) =>
          WeeklyRankingTabContainerBloc(WeeklyRankingTabContainerState(
        weeklyRankingTabContainerModelObj: WeeklyRankingTabContainerModel(),
      ))
            ..add(WeeklyRankingTabContainerInitialEvent()),
      child: WeeklyRankingTabContainerScreen(),
    );
  }
}

class _WeeklyRankingTabContainerScreenState
    extends State<WeeklyRankingTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController autoLayoutHorizontalController;

  @override
  void initState() {
    super.initState();
    autoLayoutHorizontalController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeeklyRankingTabContainerBloc,
        WeeklyRankingTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgSeelive,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                width: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: AppDecoration.outlineGray100.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL40,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Spacer(),
                            CustomImageView(
                              svgPath: ImageConstant.imgFrame,
                              height: getVerticalSize(
                                3,
                              ),
                              width: getHorizontalSize(
                                38,
                              ),
                              alignment: Alignment.center,
                            ),
                            Container(
                              height: getVerticalSize(
                                37,
                              ),
                              width: getHorizontalSize(
                                318,
                              ),
                              margin: getMargin(
                                left: 39,
                                top: 27,
                              ),
                              child: TabBar(
                                controller: autoLayoutHorizontalController,
                                labelColor: ColorConstant.deepOrangeA40001,
                                labelStyle: TextStyle(
                                  fontSize: getFontSize(
                                    18,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w600,
                                ),
                                unselectedLabelColor: ColorConstant.gray500,
                                unselectedLabelStyle: TextStyle(
                                  fontSize: getFontSize(
                                    18,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w600,
                                ),
                                indicatorColor: ColorConstant.deepOrangeA40001,
                                tabs: [
                                  Tab(
                                    child: Text(
                                      "lbl_weekly_ranking".tr,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      "lbl_rising_stars".tr,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: getVerticalSize(
                                468,
                              ),
                              child: TabBarView(
                                controller: autoLayoutHorizontalController,
                                children: [
                                  WeeklyRankingPage.builder(context),
                                  RisingStarsPage.builder(context),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
