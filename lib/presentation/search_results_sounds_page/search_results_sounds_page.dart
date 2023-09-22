import '../search_results_sounds_page/widgets/listtitle_item_widget.dart';
import 'bloc/search_results_sounds_bloc.dart';
import 'models/listtitle_item_model.dart';
import 'models/search_results_sounds_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchResultsSoundsPage extends StatefulWidget {
  @override
  _SearchResultsSoundsPageState createState() =>
      _SearchResultsSoundsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultsSoundsBloc>(
      create: (context) => SearchResultsSoundsBloc(SearchResultsSoundsState(
        searchResultsSoundsModelObj: SearchResultsSoundsModel(),
      ))
        ..add(SearchResultsSoundsInitialEvent()),
      child: SearchResultsSoundsPage(),
    );
  }
}

class _SearchResultsSoundsPageState extends State<SearchResultsSoundsPage>
    with AutomaticKeepAliveClientMixin<SearchResultsSoundsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 24,
                  right: 24,
                ),
                child: BlocSelector<SearchResultsSoundsBloc,
                    SearchResultsSoundsState, SearchResultsSoundsModel?>(
                  selector: (state) => state.searchResultsSoundsModelObj,
                  builder: (context, searchResultsSoundsModelObj) {
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
                      itemCount: searchResultsSoundsModelObj
                              ?.listtitleItemList.length ??
                          0,
                      itemBuilder: (context, index) {
                        ListtitleItemModel model = searchResultsSoundsModelObj
                                ?.listtitleItemList[index] ??
                            ListtitleItemModel();
                        return ListtitleItemWidget(
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
