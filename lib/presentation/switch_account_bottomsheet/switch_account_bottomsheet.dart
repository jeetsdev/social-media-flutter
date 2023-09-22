import '../switch_account_bottomsheet/widgets/switchaccount_item_widget.dart';
import 'bloc/switch_account_bloc.dart';
import 'models/switch_account_model.dart';
import 'models/switchaccount_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';
import 'package:ranjeet_social_media/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class SwitchAccountBottomsheet extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SwitchAccountBloc>(
      create: (context) => SwitchAccountBloc(SwitchAccountState(
        switchAccountModelObj: SwitchAccountModel(),
      ))
        ..add(SwitchAccountInitialEvent()),
      child: SwitchAccountBottomsheet(),
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
                  top: 23,
                ),
                child: Text(
                  "lbl_switch_account".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold24,
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
              Padding(
                padding: getPadding(
                  top: 23,
                ),
                child: BlocSelector<SwitchAccountBloc, SwitchAccountState,
                    SwitchAccountModel?>(
                  selector: (state) => state.switchAccountModelObj,
                  builder: (context, switchAccountModelObj) {
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
                          switchAccountModelObj?.switchaccountItemList.length ??
                              0,
                      itemBuilder: (context, index) {
                        SwitchaccountItemModel model = switchAccountModelObj
                                ?.switchaccountItemList[index] ??
                            SwitchaccountItemModel();
                        return SwitchaccountItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 24,
                    bottom: 28,
                  ),
                  child: Row(
                    children: [
                      CustomIconButton(
                        height: 60,
                        width: 60,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgPlusDeepOrangeA40001,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 20,
                          top: 18,
                          bottom: 19,
                        ),
                        child: Text(
                          "lbl_add_account".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold18Gray900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
