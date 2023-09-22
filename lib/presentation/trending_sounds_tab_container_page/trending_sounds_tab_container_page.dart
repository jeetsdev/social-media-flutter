import 'bloc/trending_sounds_tab_container_bloc.dart';
import 'models/trending_sounds_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';
import 'package:ranjeet_social_media/presentation/trending_hashtag_page/trending_hashtag_page.dart';
import 'package:ranjeet_social_media/presentation/trending_sounds_page/trending_sounds_page.dart';
import 'package:ranjeet_social_media/widgets/app_bar/appbar_image.dart';
import 'package:ranjeet_social_media/widgets/app_bar/appbar_title.dart';
import 'package:ranjeet_social_media/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class TrendingSoundsTabContainerPage extends StatefulWidget {
  @override
  _TrendingSoundsTabContainerPageState createState() =>
      _TrendingSoundsTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<TrendingSoundsTabContainerBloc>(
      create: (context) =>
          TrendingSoundsTabContainerBloc(TrendingSoundsTabContainerState(
        trendingSoundsTabContainerModelObj: TrendingSoundsTabContainerModel(),
      ))
            ..add(TrendingSoundsTabContainerInitialEvent()),
      child: TrendingSoundsTabContainerPage(),
    );
  }
}

class _TrendingSoundsTabContainerPageState
    extends State<TrendingSoundsTabContainerPage>
    with TickerProviderStateMixin {
  late TabController autoLayoutHorizontalController;

  @override
  void initState() {
    super.initState();
    autoLayoutHorizontalController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrendingSoundsTabContainerBloc,
        TrendingSoundsTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
              height: getVerticalSize(
                53,
              ),
              leadingWidth: 56,
              leading: AppbarImage(
                height: getSize(
                  32,
                ),
                width: getSize(
                  32,
                ),
                imagePath: ImageConstant.imgFrame2,
                margin: getMargin(
                  left: 24,
                  top: 10,
                  bottom: 11,
                ),
              ),
              title: AppbarTitle(
                text: "lbl_trending".tr,
                margin: getMargin(
                  left: 12,
                ),
              ),
              actions: [
                AppbarImage(
                  height: getSize(
                    28,
                  ),
                  width: getSize(
                    28,
                  ),
                  svgPath: ImageConstant.imgSearchGray900,
                  margin: getMargin(
                    left: 24,
                    top: 12,
                    right: 24,
                    bottom: 13,
                  ),
                ),
              ],
            ),
            body: Container(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: getVerticalSize(
                      39,
                    ),
                    width: getHorizontalSize(
                      304,
                    ),
                    margin: getMargin(
                      left: 39,
                      top: 28,
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
                            "lbl_sounds".tr,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Tab(
                          child: Text(
                            "lbl_hashtag".tr,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      671,
                    ),
                    child: TabBarView(
                      controller: autoLayoutHorizontalController,
                      children: [
                        TrendingSoundsPage.builder(context),
                        TrendingHashtagPage.builder(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
