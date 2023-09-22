import '../search_type_keyword_screen/widgets/listname1_item_widget.dart';
import '../search_type_keyword_screen/widgets/listname_item_widget.dart';
import 'bloc/search_type_keyword_bloc.dart';
import 'models/listname1_item_model.dart';
import 'models/listname_item_model.dart';
import 'models/search_type_keyword_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';
import 'package:ranjeet_social_media/widgets/custom_search_view.dart';

class SearchTypeKeywordScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchTypeKeywordBloc>(
      create: (context) => SearchTypeKeywordBloc(SearchTypeKeywordState(
        searchTypeKeywordModelObj: SearchTypeKeywordModel(),
      ))
        ..add(SearchTypeKeywordInitialEvent()),
      child: SearchTypeKeywordScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            all: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BlocSelector<SearchTypeKeywordBloc, SearchTypeKeywordState,
                  TextEditingController?>(
                selector: (state) => state.stateActiveSearchController,
                builder: (context, stateActiveSearchController) {
                  return CustomSearchView(
                    focusNode: FocusNode(),
                    controller: stateActiveSearchController,
                    hintText: "lbl_ariana".tr,
                    variant: SearchViewVariant.OutlineDeeporangeA40001,
                    fontStyle: SearchViewFontStyle.UrbanistSemiBold14Gray900,
                    prefix: Container(
                      margin: getMargin(
                        left: 20,
                        top: 18,
                        right: 12,
                        bottom: 18,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgSearchDeepOrangeA40001,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        56,
                      ),
                    ),
                    suffix: Container(
                      margin: getMargin(
                        left: 30,
                        top: 18,
                        right: 20,
                        bottom: 18,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgOverflowmenu,
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
              Padding(
                padding: getPadding(
                  top: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_recent".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanBold20,
                    ),
                    Padding(
                      padding: getPadding(
                        bottom: 3,
                      ),
                      child: Text(
                        "lbl_clear_all".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanBold16DeeporangeA40001
                            .copyWith(
                          letterSpacing: getHorizontalSize(
                            0.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 15,
                ),
                child: BlocSelector<SearchTypeKeywordBloc,
                    SearchTypeKeywordState, SearchTypeKeywordModel?>(
                  selector: (state) => state.searchTypeKeywordModelObj,
                  builder: (context, searchTypeKeywordModelObj) {
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
                          searchTypeKeywordModelObj?.listnameItemList.length ??
                              0,
                      itemBuilder: (context, index) {
                        ListnameItemModel model = searchTypeKeywordModelObj
                                ?.listnameItemList[index] ??
                            ListnameItemModel();
                        return ListnameItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 34,
                ),
                child: Text(
                  "msg_suggested_searc".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold20,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 14,
                ),
                child: BlocSelector<SearchTypeKeywordBloc,
                    SearchTypeKeywordState, SearchTypeKeywordModel?>(
                  selector: (state) => state.searchTypeKeywordModelObj,
                  builder: (context, searchTypeKeywordModelObj) {
                    return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            25,
                          ),
                        );
                      },
                      itemCount:
                          searchTypeKeywordModelObj?.listname1ItemList.length ??
                              0,
                      itemBuilder: (context, index) {
                        Listname1ItemModel model = searchTypeKeywordModelObj
                                ?.listname1ItemList[index] ??
                            Listname1ItemModel();
                        return Listname1ItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
