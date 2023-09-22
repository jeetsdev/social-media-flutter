import '../models/viewers_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';
import 'package:ranjeet_social_media/widgets/custom_button.dart';

// ignore: must_be_immutable
class ViewersItemWidget extends StatelessWidget {
  ViewersItemWidget(this.viewersItemModelObj);

  ViewersItemModel viewersItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse60x6014,
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
            bottom: 29,
          ),
          child: Text(
            "lbl_daryl_nehls".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtUrbanistRomanBold18Gray900,
          ),
        ),
        Spacer(),
        CustomButton(
          height: getVerticalSize(
            32,
          ),
          width: getHorizontalSize(
            73,
          ),
          text: "lbl_follow".tr,
          margin: getMargin(
            top: 14,
            bottom: 14,
          ),
        ),
      ],
    );
  }
}
