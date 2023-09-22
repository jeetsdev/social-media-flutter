import 'bloc/logout_modal_bloc.dart';
import 'models/logout_modal_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';
import 'package:ranjeet_social_media/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class LogoutModalBottomsheet extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<LogoutModalBloc>(
      create: (context) => LogoutModalBloc(LogoutModalState(
        logoutModalModelObj: LogoutModalModel(),
      ))
        ..add(LogoutModalInitialEvent()),
      child: LogoutModalBottomsheet(),
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
                  top: 27,
                ),
                child: Text(
                  "lbl_logout".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold24RedA200,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 20,
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
              Padding(
                padding: getPadding(
                  top: 25,
                ),
                child: Text(
                  "msg_are_you_sure_yo".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold20Gray800,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 12,
                  top: 22,
                  right: 12,
                  bottom: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomButton(
                        height: getVerticalSize(
                          58,
                        ),
                        text: "lbl_cancel".tr,
                        margin: getMargin(
                          right: 12,
                        ),
                        variant: ButtonVariant.FillDeeporange50,
                        shape: ButtonShape.RoundedBorder16,
                        padding: ButtonPadding.PaddingAll18,
                        fontStyle: ButtonFontStyle
                            .UrbanistRomanBold16DeeporangeA40001_1,
                      ),
                    ),
                    Expanded(
                      child: CustomButton(
                        height: getVerticalSize(
                          58,
                        ),
                        text: "lbl_yes_logout".tr,
                        margin: getMargin(
                          left: 12,
                        ),
                        variant: ButtonVariant.OutlineDeeporangeA40035_1,
                        shape: ButtonShape.RoundedBorder16,
                        padding: ButtonPadding.PaddingAll18,
                        fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
