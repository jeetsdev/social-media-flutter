import 'bloc/walkthrough_one_bloc.dart';import 'models/walkthrough_one_model.dart';import 'package:flutter/material.dart';import 'package:ranjeet_social_media/core/app_export.dart';import 'package:ranjeet_social_media/widgets/custom_button.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';class WalkthroughOneScreen extends StatelessWidget {static Widget builder(BuildContext context) { return BlocProvider<WalkthroughOneBloc>(create: (context) => WalkthroughOneBloc(WalkthroughOneState(walkthroughOneModelObj: WalkthroughOneModel()))..add(WalkthroughOneInitialEvent()), child: WalkthroughOneScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<WalkthroughOneBloc, WalkthroughOneState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Spacer(), CustomImageView(svgPath: ImageConstant.img10, height: getVerticalSize(252), width: getHorizontalSize(365)), Container(width: double.maxFinite, child: Container(margin: getMargin(top: 42), padding: getPadding(left: 24, top: 48, right: 24, bottom: 48), decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [Container(width: getHorizontalSize(361), margin: getMargin(left: 9, top: 22, right: 8), child: Text("msg_create_short_vi".tr, maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtUrbanistRomanBold40)), Container(height: getVerticalSize(8), margin: getMargin(top: 74), child: SmoothIndicator(offset: 0, count: 3, size: Size.zero, effect: ScrollingDotsEffect(spacing: 6, activeDotColor: ColorConstant.deepOrangeA400, dotColor: ColorConstant.gray300, dotHeight: getVerticalSize(8), dotWidth: getHorizontalSize(8)))), CustomButton(height: getVerticalSize(58), text: "lbl_next".tr, margin: getMargin(top: 60), variant: ButtonVariant.OutlineDeeporangeA40035, shape: ButtonShape.RoundedBorder16, padding: ButtonPadding.PaddingAll18, fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700, onTap: () {onTapNext(context);})])))]))));}); } 
onTapNext(BuildContext context) { NavigatorService.pushNamed(AppRoutes.walkthroughTwoScreen, ); } 
 }
