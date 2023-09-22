import '../all_activity_page/widgets/listaction_item_widget.dart';
import '../all_activity_page/widgets/listellipse5_item_widget.dart';
import 'bloc/all_activity_bloc.dart';
import 'models/all_activity_model.dart';
import 'models/listaction_item_model.dart';
import 'models/listellipse5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';
import 'package:ranjeet_social_media/widgets/app_bar/appbar_dropdown.dart';
import 'package:ranjeet_social_media/widgets/app_bar/appbar_image.dart';
import 'package:ranjeet_social_media/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class AllActivityPage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<AllActivityBloc>(
      create: (context) => AllActivityBloc(AllActivityState(
        allActivityModelObj: AllActivityModel(),
      ))
        ..add(AllActivityInitialEvent()),
      child: AllActivityPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            49,
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
              top: 8,
              bottom: 9,
            ),
          ),
          centerTitle: true,
          title: BlocSelector<AllActivityBloc, AllActivityState,
              AllActivityModel?>(
            selector: (state) => state.allActivityModelObj,
            builder: (context, allActivityModelObj) {
              return AppbarDropdown(
                hintText: "lbl_all_activity".tr,
                items: allActivityModelObj?.dropdownItemList ?? [],
                onTap: (value) {
                  context.read<Bloc>().add(onSelected(value: value));
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
                top: 10,
                right: 24,
                bottom: 11,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 24,
            top: 33,
            right: 24,
            bottom: 33,
          ),
          child: Column(
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
                child: BlocSelector<AllActivityBloc, AllActivityState,
                    AllActivityModel?>(
                  selector: (state) => state.allActivityModelObj,
                  builder: (context, allActivityModelObj) {
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
                          allActivityModelObj?.listellipse5ItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        Listellipse5ItemModel model =
                            allActivityModelObj?.listellipse5ItemList[index] ??
                                Listellipse5ItemModel();
                        return Listellipse5ItemWidget(
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
                child: BlocSelector<AllActivityBloc, AllActivityState,
                    AllActivityModel?>(
                  selector: (state) => state.allActivityModelObj,
                  builder: (context, allActivityModelObj) {
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
                          allActivityModelObj?.listactionItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        ListactionItemModel model =
                            allActivityModelObj?.listactionItemList[index] ??
                                ListactionItemModel();
                        return ListactionItemWidget(
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
