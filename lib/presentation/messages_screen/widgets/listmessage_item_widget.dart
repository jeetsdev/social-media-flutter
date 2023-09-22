import '../models/listmessage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';

// ignore: must_be_immutable
class ListmessageItemWidget extends StatelessWidget {
  ListmessageItemWidget(this.listmessageItemModelObj, {this.onTapRowellipse});

  ListmessageItemModel listmessageItemModelObj;

  VoidCallback? onTapRowellipse;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          onTapRowellipse?.call();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse60x605,
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
                top: 6,
                bottom: 7,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    listmessageItemModelObj.nameTxt,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanBold18Gray900,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 7,
                    ),
                    child: Text(
                      listmessageItemModelObj.messageTxt,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanMedium14Gray700.copyWith(
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
            Padding(
              padding: getPadding(
                bottom: 6,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getSize(
                      25,
                    ),
                    padding: getPadding(
                      left: 10,
                      top: 6,
                      right: 10,
                      bottom: 6,
                    ),
                    decoration: AppDecoration.txtGradientDeeporangeA400Orange600
                        .copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder12,
                    ),
                    child: Text(
                      listmessageItemModelObj.numberTxt,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRegular10.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.2,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 11,
                    ),
                    child: Text(
                      listmessageItemModelObj.amountTxt,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanMedium14Gray700.copyWith(
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
    );
  }
}
