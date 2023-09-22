import '../type_comments_bottomsheet/widgets/comments1_item_widget.dart';
import 'bloc/type_comments_bloc.dart';
import 'models/comments1_item_model.dart';
import 'models/type_comments_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';
import 'package:ranjeet_social_media/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class TypeCommentsBottomsheet extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<TypeCommentsBloc>(
      create: (context) => TypeCommentsBloc(TypeCommentsState(
        typeCommentsModelObj: TypeCommentsModel(),
      ))
        ..add(TypeCommentsInitialEvent()),
      child: TypeCommentsBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Container(
          width: double.maxFinite,
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
                margin: getMargin(
                  top: 8,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 24,
                ),
                child: Text(
                  "lbl_24_8k_comments".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold24,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 23,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray200,
                  indent: getHorizontalSize(
                    24,
                  ),
                  endIndent: getHorizontalSize(
                    24,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 23,
                  right: 24,
                ),
                child: BlocSelector<TypeCommentsBloc, TypeCommentsState,
                    TypeCommentsModel?>(
                  selector: (state) => state.typeCommentsModelObj,
                  builder: (context, typeCommentsModelObj) {
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
                          typeCommentsModelObj?.comments1ItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        Comments1ItemModel model =
                            typeCommentsModelObj?.comments1ItemList[index] ??
                                Comments1ItemModel();
                        return Comments1ItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                width: double.maxFinite,
                margin: getMargin(
                  top: 24,
                ),
                padding: getPadding(
                  all: 24,
                ),
                decoration: AppDecoration.outlineGray1001.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BlocSelector<TypeCommentsBloc, TypeCommentsState,
                        TextEditingController?>(
                      selector: (state) =>
                          state.statusActiveTypeNormalController,
                      builder: (context, statusActiveTypeNormalController) {
                        return CustomTextFormField(
                          width: getHorizontalSize(
                            312,
                          ),
                          focusNode: FocusNode(),
                          controller: statusActiveTypeNormalController,
                          hintText: "msg_you_re_so_adora2".tr,
                          variant: TextFormFieldVariant.OutlineDeeporangeA40001,
                          padding: TextFormFieldPadding.PaddingT19_2,
                          fontStyle: TextFormFieldFontStyle
                              .UrbanistSemiBold14DeeporangeA40001,
                          textInputAction: TextInputAction.done,
                          suffix: Container(
                            margin: getMargin(
                              left: 30,
                              top: 18,
                              right: 18,
                              bottom: 18,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant
                                  .imgCategoriesgiftComponentadditionalIcons,
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: getVerticalSize(
                              56,
                            ),
                          ),
                        );
                      },
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgAutolayouthorizontalWhiteA700,
                      height: getSize(
                        56,
                      ),
                      width: getSize(
                        56,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          28,
                        ),
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
