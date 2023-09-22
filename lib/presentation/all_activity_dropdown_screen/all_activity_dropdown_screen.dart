import '../all_activity_dropdown_screen/widgets/listaction1_item_widget.dart';
import '../all_activity_dropdown_screen/widgets/listellipse6_item_widget.dart';
import 'bloc/all_activity_dropdown_bloc.dart';
import 'models/all_activity_dropdown_model.dart';
import 'models/listaction1_item_model.dart';
import 'models/listellipse6_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';
import 'package:ranjeet_social_media/widgets/app_bar/appbar_dropdown.dart';
import 'package:ranjeet_social_media/widgets/app_bar/appbar_image.dart';
import 'package:ranjeet_social_media/widgets/app_bar/custom_app_bar.dart';
import 'package:ranjeet_social_media/widgets/custom_button.dart';

class AllActivityDropdownScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<AllActivityDropdownBloc>(
      create: (context) => AllActivityDropdownBloc(AllActivityDropdownState(
        allActivityDropdownModelObj: AllActivityDropdownModel(),
      ))
        ..add(AllActivityDropdownInitialEvent()),
      child: AllActivityDropdownScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          height: size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: getPadding(
                    left: 24,
                    top: 82,
                    right: 24,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_today".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanBold20,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 22,
                        ),
                        child: BlocSelector<
                            AllActivityDropdownBloc,
                            AllActivityDropdownState,
                            AllActivityDropdownModel?>(
                          selector: (state) =>
                              state.allActivityDropdownModelObj,
                          builder: (context, allActivityDropdownModelObj) {
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
                              itemCount: allActivityDropdownModelObj
                                      ?.listellipse6ItemList.length ??
                                  0,
                              itemBuilder: (context, index) {
                                Listellipse6ItemModel model =
                                    allActivityDropdownModelObj
                                            ?.listellipse6ItemList[index] ??
                                        Listellipse6ItemModel();
                                return Listellipse6ItemWidget(
                                  model,
                                );
                              },
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 26,
                        ),
                        child: Text(
                          "lbl_yesterday".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold20,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 22,
                        ),
                        child: BlocSelector<
                            AllActivityDropdownBloc,
                            AllActivityDropdownState,
                            AllActivityDropdownModel?>(
                          selector: (state) =>
                              state.allActivityDropdownModelObj,
                          builder: (context, allActivityDropdownModelObj) {
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
                              itemCount: allActivityDropdownModelObj
                                      ?.listaction1ItemList.length ??
                                  0,
                              itemBuilder: (context, index) {
                                Listaction1ItemModel model =
                                    allActivityDropdownModelObj
                                            ?.listaction1ItemList[index] ??
                                        Listaction1ItemModel();
                                return Listaction1ItemWidget(
                                  model,
                                );
                              },
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 23,
                        ),
                        child: Text(
                          "lbl_this_week".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold20,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse60x604,
                              height: getSize(
                                60,
                              ),
                              width: getSize(
                                60,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  30,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 20,
                                top: 8,
                                bottom: 7,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_rayford_chenail".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtUrbanistRomanBold18Gray900,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 5,
                                    ),
                                    child: Text(
                                      "msg_started_followi".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistRomanMedium14Gray700
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            CustomButton(
                              height: getVerticalSize(
                                32,
                              ),
                              width: getHorizontalSize(
                                107,
                              ),
                              text: "lbl_follow_back".tr,
                              margin: getMargin(
                                top: 14,
                                bottom: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: AppDecoration.fillGray90099,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: double.maxFinite,
                        child: Container(
                          margin: getMargin(
                            bottom: 470,
                          ),
                          padding: getPadding(
                            top: 8,
                            bottom: 8,
                          ),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomAppBar(
                                height: getVerticalSize(
                                  33,
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
                                    bottom: 1,
                                  ),
                                ),
                                centerTitle: true,
                                title: BlocSelector<
                                    AllActivityDropdownBloc,
                                    AllActivityDropdownState,
                                    AllActivityDropdownModel?>(
                                  selector: (state) =>
                                      state.allActivityDropdownModelObj,
                                  builder:
                                      (context, allActivityDropdownModelObj) {
                                    return AppbarDropdown(
                                      hintText: "lbl_all_activity".tr,
                                      items: allActivityDropdownModelObj
                                              ?.dropdownItemList ??
                                          [],
                                      onTap: (value) {
                                        context
                                            .read<Bloc>()
                                            .add(onSelected(value: value));
                                      },
                                    );
                                  },
                                ),
                                actions: [
                                  AppbarImage(
                                    height: getSize(
                                      28,
                                    ),
                                    width: getSize(
                                      28,
                                    ),
                                    svgPath: ImageConstant.imgRewind,
                                    margin: getMargin(
                                      left: 24,
                                      top: 2,
                                      right: 24,
                                      bottom: 3,
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    left: 24,
                                    top: 31,
                                    right: 24,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant
                                            .imgIconlycurvedactivity,
                                        height: getSize(
                                          28,
                                        ),
                                        width: getSize(
                                          28,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 20,
                                          top: 5,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          "lbl_all_activity".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtUrbanistSemiBold18Gray900
                                              .copyWith(
                                            letterSpacing: getHorizontalSize(
                                              0.2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgCheckmark24x24,
                                        height: getSize(
                                          28,
                                        ),
                                        width: getSize(
                                          28,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 24,
                                  top: 20,
                                ),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgRefresh,
                                      height: getSize(
                                        28,
                                      ),
                                      width: getSize(
                                        28,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 20,
                                        top: 2,
                                        bottom: 3,
                                      ),
                                      child: Text(
                                        "lbl_likes".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistSemiBold18Gray900
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.2,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 24,
                                  top: 20,
                                ),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgClock28x28,
                                      height: getSize(
                                        28,
                                      ),
                                      width: getSize(
                                        28,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 20,
                                        top: 3,
                                        bottom: 2,
                                      ),
                                      child: Text(
                                        "lbl_comments".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistSemiBold18Gray900
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.2,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 24,
                                  top: 20,
                                ),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgFile,
                                      height: getSize(
                                        28,
                                      ),
                                      width: getSize(
                                        28,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 20,
                                        top: 3,
                                        bottom: 2,
                                      ),
                                      child: Text(
                                        "lbl_q_a".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistSemiBold18Gray900
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.2,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 24,
                                  top: 20,
                                ),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgUser28x28,
                                      height: getSize(
                                        28,
                                      ),
                                      width: getSize(
                                        28,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 20,
                                        top: 5,
                                      ),
                                      child: Text(
                                        "lbl_mentions_tags".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistSemiBold18Gray900
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.2,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 24,
                                  top: 20,
                                ),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgUser11,
                                      height: getSize(
                                        28,
                                      ),
                                      width: getSize(
                                        28,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 20,
                                        top: 2,
                                        bottom: 3,
                                      ),
                                      child: Text(
                                        "lbl_followers".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistSemiBold18Gray900
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.2,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 24,
                                  top: 20,
                                  bottom: 16,
                                ),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgInfo,
                                      height: getSize(
                                        28,
                                      ),
                                      width: getSize(
                                        28,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 20,
                                        top: 5,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "lbl_from_tikpik".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistSemiBold18Gray900
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.2,
                                          ),
                                        ),
                                      ),
                                    ),
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
            ],
          ),
        ),
      ),
    );
  }
}
