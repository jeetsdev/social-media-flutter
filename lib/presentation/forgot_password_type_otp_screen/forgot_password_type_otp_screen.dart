import 'bloc/forgot_password_type_otp_bloc.dart';import 'models/forgot_password_type_otp_model.dart';import 'package:flutter/material.dart';import 'package:flutter/services.dart';import 'package:pin_code_fields/pin_code_fields.dart';import 'package:ranjeet_social_media/core/app_export.dart';import 'package:ranjeet_social_media/widgets/app_bar/appbar_image.dart';import 'package:ranjeet_social_media/widgets/app_bar/appbar_title.dart';import 'package:ranjeet_social_media/widgets/app_bar/custom_app_bar.dart';import 'package:ranjeet_social_media/widgets/custom_button.dart';class ForgotPasswordTypeOtpScreen extends StatelessWidget {static Widget builder(BuildContext context) { return BlocProvider<ForgotPasswordTypeOtpBloc>(create: (context) => ForgotPasswordTypeOtpBloc(ForgotPasswordTypeOtpState(forgotPasswordTypeOtpModelObj: ForgotPasswordTypeOtpModel()))..add(ForgotPasswordTypeOtpInitialEvent()), child: ForgotPasswordTypeOtpScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, resizeToAvoidBottomInset: false, appBar: CustomAppBar(height: getVerticalSize(51), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 13), onTap: () {onTapArrowleft7(context);}), title: AppbarTitle(text: "lbl_forgot_password".tr, margin: getMargin(left: 16))), body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 118, right: 24), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Text("msg_code_has_been_s".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium18.copyWith(letterSpacing: getHorizontalSize(0.2))), Padding(padding: getPadding(top: 61), child: BlocSelector<ForgotPasswordTypeOtpBloc, ForgotPasswordTypeOtpState, TextEditingController?>(selector: (state) => state.otpController, builder: (context, otpController) {return PinCodeTextField(appContext: context, controller: otpController, length: 4, obscureText: false, obscuringCharacter: '*', keyboardType: TextInputType.number, autoDismissKeyboard: true, enableActiveFill: true, inputFormatters: [FilteringTextInputFormatter.digitsOnly], onChanged: (value) {otpController?.text = value;}, textStyle: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(24), fontFamily: 'Urbanist', fontWeight: FontWeight.w700), pinTheme: PinTheme(fieldHeight: getHorizontalSize(61), fieldWidth: getHorizontalSize(78), shape: PinCodeFieldShape.box, borderRadius: BorderRadius.circular(getHorizontalSize(12)), selectedFillColor: ColorConstant.whiteA700, activeFillColor: ColorConstant.whiteA700, inactiveFillColor: ColorConstant.whiteA700, inactiveColor: ColorConstant.gray900, selectedColor: ColorConstant.gray900, activeColor: ColorConstant.gray900));})), Padding(padding: getPadding(top: 60), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_resend_code_in".tr, style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(18), fontFamily: 'Urbanist', fontWeight: FontWeight.w500, letterSpacing: getHorizontalSize(0.2))), TextSpan(text: "lbl_55".tr, style: TextStyle(color: ColorConstant.deepOrangeA40001, fontSize: getFontSize(18), fontFamily: 'Urbanist', fontWeight: FontWeight.w500, letterSpacing: getHorizontalSize(0.2))), TextSpan(text: "lbl_s".tr, style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(18), fontFamily: 'Urbanist', fontWeight: FontWeight.w500, letterSpacing: getHorizontalSize(0.2)))]), textAlign: TextAlign.left)), CustomButton(height: getVerticalSize(55), text: "lbl_verify".tr, margin: getMargin(top: 98, bottom: 5), variant: ButtonVariant.FillBluegray100, shape: ButtonShape.RoundedBorder16, padding: ButtonPadding.PaddingAll18, fontStyle: ButtonFontStyle.UrbanistRomanBold16Gray600_1, onTap: () {onTapVerify(context);})])))); } 
onTapVerify(BuildContext context) { NavigatorService.pushNamed(AppRoutes.forgotPasswordFilledOtpScreen, ); } 
onTapArrowleft7(BuildContext context) { NavigatorService.goBack(); } 
 }
