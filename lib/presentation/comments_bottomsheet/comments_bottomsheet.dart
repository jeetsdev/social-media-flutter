import '../comments_bottomsheet/widgets/comments_item_widget.dart';
import 'bloc/comments_bloc.dart';
import 'models/comments_item_model.dart';
import 'models/comments_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';
import 'package:ranjeet_social_media/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CommentsBottomsheet extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<CommentsBloc>(
      create: (context) => CommentsBloc(CommentsState(
        commentsModelObj: CommentsModel(),
      ))
        ..add(CommentsInitialEvent()),
      child: CommentsBottomsheet(),
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
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 23,
                ),
                child:
                    BlocSelector<CommentsBloc, CommentsState, CommentsModel?>(
                  selector: (state) => state.commentsModelObj,
                  builder: (context, commentsModelObj) {
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
                      itemCount: commentsModelObj?.commentsItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        CommentsItemModel model =
                            commentsModelObj?.commentsItemList[index] ??
                                CommentsItemModel();
                        return CommentsItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 24,
                  bottom: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BlocSelector<CommentsBloc, CommentsState,
                        TextEditingController?>(
                      selector: (state) => state.statusDefaultController,
                      builder: (context, statusDefaultController) {
                        return CustomTextFormField(
                          width: getHorizontalSize(
                            312,
                          ),
                          focusNode: FocusNode(),
                          controller: statusDefaultController,
                          hintText: "lbl_add_comment".tr,
                          padding: TextFormFieldPadding.PaddingT19_2,
                          textInputAction: TextInputAction.done,
                          suffix: Container(
                            margin: getMargin(
                              left: 30,
                              top: 18,
                              right: 18,
                              bottom: 18,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgGrid,
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
