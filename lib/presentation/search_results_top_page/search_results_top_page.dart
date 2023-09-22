import '../search_results_top_page/widgets/listellipse_item_widget.dart';
import '../search_results_top_page/widgets/listplay_item_widget.dart';
import 'bloc/search_results_top_bloc.dart';
import 'models/listellipse_item_model.dart';
import 'models/listplay_item_model.dart';
import 'models/search_results_top_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchResultsTopPage extends StatefulWidget {
  @override
  _SearchResultsTopPageState createState() => _SearchResultsTopPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultsTopBloc>(
      create: (context) => SearchResultsTopBloc(SearchResultsTopState(
        searchResultsTopModelObj: SearchResultsTopModel(),
      ))
        ..add(SearchResultsTopInitialEvent()),
      child: SearchResultsTopPage(),
    );
  }
}

class _SearchResultsTopPageState extends State<SearchResultsTopPage>
    with AutomaticKeepAliveClientMixin<SearchResultsTopPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 24,
                    right: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_users".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanBold20,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 15,
                        ),
                        child: BlocSelector<SearchResultsTopBloc,
                            SearchResultsTopState, SearchResultsTopModel?>(
                          selector: (state) => state.searchResultsTopModelObj,
                          builder: (context, searchResultsTopModelObj) {
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
                              itemCount: searchResultsTopModelObj
                                      ?.listellipseItemList.length ??
                                  0,
                              itemBuilder: (context, index) {
                                ListellipseItemModel model =
                                    searchResultsTopModelObj
                                            ?.listellipseItemList[index] ??
                                        ListellipseItemModel();
                                return ListellipseItemWidget(
                                  model,
                                );
                              },
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 31,
                        ),
                        child: Text(
                          "lbl_videos".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold20,
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          216,
                        ),
                        child: BlocSelector<SearchResultsTopBloc,
                            SearchResultsTopState, SearchResultsTopModel?>(
                          selector: (state) => state.searchResultsTopModelObj,
                          builder: (context, searchResultsTopModelObj) {
                            return ListView.separated(
                              padding: getPadding(
                                top: 16,
                              ),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    8,
                                  ),
                                );
                              },
                              itemCount: searchResultsTopModelObj
                                      ?.listplayItemList.length ??
                                  0,
                              itemBuilder: (context, index) {
                                ListplayItemModel model =
                                    searchResultsTopModelObj
                                            ?.listplayItemList[index] ??
                                        ListplayItemModel();
                                return ListplayItemWidget(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
