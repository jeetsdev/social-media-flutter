import '../search_results_users_page/widgets/listellipse1_item_widget.dart';
import 'bloc/search_results_users_bloc.dart';
import 'models/listellipse1_item_model.dart';
import 'models/search_results_users_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchResultsUsersPage extends StatefulWidget {
  @override
  _SearchResultsUsersPageState createState() => _SearchResultsUsersPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultsUsersBloc>(
      create: (context) => SearchResultsUsersBloc(SearchResultsUsersState(
        searchResultsUsersModelObj: SearchResultsUsersModel(),
      ))
        ..add(SearchResultsUsersInitialEvent()),
      child: SearchResultsUsersPage(),
    );
  }
}

class _SearchResultsUsersPageState extends State<SearchResultsUsersPage>
    with AutomaticKeepAliveClientMixin<SearchResultsUsersPage> {
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
                  left: 23,
                  top: 10,
                  right: 25,
                ),
                child: BlocSelector<SearchResultsUsersBloc,
                    SearchResultsUsersState, SearchResultsUsersModel?>(
                  selector: (state) => state.searchResultsUsersModelObj,
                  builder: (context, searchResultsUsersModelObj) {
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
                      itemCount: searchResultsUsersModelObj
                              ?.listellipse1ItemList.length ??
                          0,
                      itemBuilder: (context, index) {
                        Listellipse1ItemModel model = searchResultsUsersModelObj
                                ?.listellipse1ItemList[index] ??
                            Listellipse1ItemModel();
                        return Listellipse1ItemWidget(
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
