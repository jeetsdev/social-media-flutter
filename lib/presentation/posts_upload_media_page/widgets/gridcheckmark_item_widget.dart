import '../models/gridcheckmark_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';

// ignore: must_be_immutable
class GridcheckmarkItemWidget extends StatelessWidget {
  GridcheckmarkItemWidget(this.gridcheckmarkItemModelObj);

  GridcheckmarkItemModel gridcheckmarkItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getSize(
        121,
      ),
      width: getSize(
        121,
      ),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage121x1211,
            height: getSize(
              121,
            ),
            width: getSize(
              121,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                12,
              ),
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            svgPath: ImageConstant.imgCheckmark20x20,
            height: getSize(
              20,
            ),
            width: getSize(
              20,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                10,
              ),
            ),
            alignment: Alignment.topRight,
            margin: getMargin(
              top: 10,
              right: 10,
            ),
          ),
        ],
      ),
    );
  }
}
