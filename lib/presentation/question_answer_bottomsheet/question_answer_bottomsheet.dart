import '../question_answer_bottomsheet/widgets/listellipse4_item_widget.dart';
import 'bloc/question_answer_bloc.dart';
import 'models/listellipse4_item_model.dart';
import 'models/question_answer_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';
import 'package:ranjeet_social_media/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class QuestionAnswerBottomsheet extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<QuestionAnswerBloc>(
      create: (context) => QuestionAnswerBloc(QuestionAnswerState(
        questionAnswerModelObj: QuestionAnswerModel(),
      ))
        ..add(QuestionAnswerInitialEvent()),
      child: QuestionAnswerBottomsheet(),
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
                  "msg_question_answ".tr,
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
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 25,
                  ),
                  child: Text(
                    "msg_3_378_questions".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistSemiBold16Gray800.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.2,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 23,
                  right: 8,
                ),
                child: BlocSelector<QuestionAnswerBloc, QuestionAnswerState,
                    QuestionAnswerModel?>(
                  selector: (state) => state.questionAnswerModelObj,
                  builder: (context, questionAnswerModelObj) {
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
                          questionAnswerModelObj?.listellipse4ItemList.length ??
                              0,
                      itemBuilder: (context, index) {
                        Listellipse4ItemModel model = questionAnswerModelObj
                                ?.listellipse4ItemList[index] ??
                            Listellipse4ItemModel();
                        return Listellipse4ItemWidget(
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
                  bottom: 28,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BlocSelector<QuestionAnswerBloc, QuestionAnswerState,
                        TextEditingController?>(
                      selector: (state) => state.frameOneController,
                      builder: (context, frameOneController) {
                        return CustomTextFormField(
                          width: getHorizontalSize(
                            312,
                          ),
                          focusNode: FocusNode(),
                          controller: frameOneController,
                          hintText: "msg_ask_a_question".tr,
                          padding: TextFormFieldPadding.PaddingAll19,
                          textInputAction: TextInputAction.done,
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
