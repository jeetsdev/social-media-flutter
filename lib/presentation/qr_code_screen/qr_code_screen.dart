import 'bloc/qr_code_bloc.dart';
import 'models/qr_code_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';
import 'package:ranjeet_social_media/widgets/custom_button.dart';

class QrCodeScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<QrCodeBloc>(
      create: (context) => QrCodeBloc(QrCodeState(
        qrCodeModelObj: QrCodeModel(),
      ))
        ..add(QrCodeInitialEvent()),
      child: QrCodeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QrCodeBloc, QrCodeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(
                    1,
                    1,
                  ),
                  end: Alignment(
                    0,
                    0,
                  ),
                  colors: [
                    ColorConstant.deepOrangeA400,
                    ColorConstant.orange600,
                  ],
                ),
              ),
              child: Container(
                width: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: getMargin(
                        top: 29,
                      ),
                      color: ColorConstant.whiteA700,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.roundedBorder20,
                      ),
                      child: Container(
                        height: getSize(
                          300,
                        ),
                        width: getSize(
                          300,
                        ),
                        padding: getPadding(
                          all: 18,
                        ),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child: Stack(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgVectorBlack900,
                              height: getSize(
                                262,
                              ),
                              width: getSize(
                                262,
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 22,
                      ),
                      child: Text(
                        "lbl_andrew_ainsley".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanBold24WhiteA700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: CustomButton(
              height: getVerticalSize(
                58,
              ),
              text: "lbl_scan_qr_code".tr,
              margin: getMargin(
                left: 24,
                right: 24,
                bottom: 48,
              ),
              variant: ButtonVariant.FillDeeporange50,
              shape: ButtonShape.RoundedBorder16,
              padding: ButtonPadding.PaddingT19,
              fontStyle: ButtonFontStyle.UrbanistRomanBold16DeeporangeA40001_1,
              prefixWidget: Container(
                margin: getMargin(
                  right: 8,
                ),
                child: CustomImageView(
                  svgPath: ImageConstant.imgCar20x20,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
