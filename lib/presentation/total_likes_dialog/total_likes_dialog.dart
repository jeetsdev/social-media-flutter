import 'bloc/total_likes_bloc.dart';
import 'models/total_likes_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';
import 'package:ranjeet_social_media/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class TotalLikesDialog extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<TotalLikesBloc>(
      create: (context) => TotalLikesBloc(TotalLikesState(
        totalLikesModelObj: TotalLikesModel(),
      ))
        ..add(TotalLikesInitialEvent()),
      child: TotalLikesDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        340,
      ),
      padding: getPadding(
        left: 32,
        top: 31,
        right: 32,
        bottom: 31,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "lbl_27m_total_likes".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtUrbanistRomanBold24DeeporangeA40001,
          ),
          Container(
            width: getHorizontalSize(
              267,
            ),
            margin: getMargin(
              left: 3,
              top: 17,
              right: 4,
            ),
            child: Text(
              "msg_jenny_wilson_received".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtUrbanistRegular16.copyWith(
                letterSpacing: getHorizontalSize(
                  0.2,
                ),
              ),
            ),
          ),
          CustomButton(
            height: getVerticalSize(
              58,
            ),
            text: "lbl_ok".tr,
            margin: getMargin(
              top: 32,
            ),
            shape: ButtonShape.RoundedBorder16,
            padding: ButtonPadding.PaddingAll18,
            fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700_1,
          ),
        ],
      ),
    );
  }
}
