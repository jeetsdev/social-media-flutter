import '../go_live_together_bottomsheet/widgets/listellipse3_item_widget.dart';
import 'bloc/go_live_together_bloc.dart';
import 'models/go_live_together_model.dart';
import 'models/listellipse3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';
import 'package:ranjeet_social_media/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class GoLiveTogetherBottomsheet extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<GoLiveTogetherBloc>(
      create: (context) => GoLiveTogetherBloc(GoLiveTogetherState(
        goLiveTogetherModelObj: GoLiveTogetherModel(),
      ))
        ..add(GoLiveTogetherInitialEvent()),
      child: GoLiveTogetherBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 24,
            top: 8,
            right: 24,
            bottom: 8,
          ),
          decoration: AppDecoration.outlineGray100.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL40,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgFrame,
                height: getVerticalSize(
                  3,
                ),
                width: getHorizontalSize(
                  38,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 26,
                ),
                child: Text(
                  "msg_go_live_togethe".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold24,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 21,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray200,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 26,
                  ),
                  child: Text(
                    "msg_532_guest_reque".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistSemiBold16Gray800.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.2,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 22,
                ),
                child: BlocSelector<GoLiveTogetherBloc, GoLiveTogetherState,
                    GoLiveTogetherModel?>(
                  selector: (state) => state.goLiveTogetherModelObj,
                  builder: (context, goLiveTogetherModelObj) {
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
                          goLiveTogetherModelObj?.listellipse3ItemList.length ??
                              0,
                      itemBuilder: (context, index) {
                        Listellipse3ItemModel model = goLiveTogetherModelObj
                                ?.listellipse3ItemList[index] ??
                            Listellipse3ItemModel();
                        return Listellipse3ItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 24,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray200,
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  58,
                ),
                text: "lbl_request".tr,
                margin: getMargin(
                  top: 23,
                  bottom: 28,
                ),
                variant: ButtonVariant.OutlineDeeporangeA40035,
                shape: ButtonShape.RoundedBorder16,
                padding: ButtonPadding.PaddingAll18,
                fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
