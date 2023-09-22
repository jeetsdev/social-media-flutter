import '../followers_page/widgets/followers_item_widget.dart';
import 'bloc/followers_bloc.dart';
import 'models/followers_item_model.dart';
import 'models/followers_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FollowersPage extends StatefulWidget {
  @override
  _FollowersPageState createState() => _FollowersPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<FollowersBloc>(
      create: (context) => FollowersBloc(FollowersState(
        followersModelObj: FollowersModel(),
      ))
        ..add(FollowersInitialEvent()),
      child: FollowersPage(),
    );
  }
}

class _FollowersPageState extends State<FollowersPage>
    with AutomaticKeepAliveClientMixin<FollowersPage> {
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
                child: BlocSelector<FollowersBloc, FollowersState,
                    FollowersModel?>(
                  selector: (state) => state.followersModelObj,
                  builder: (context, followersModelObj) {
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
                          followersModelObj?.followersItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        FollowersItemModel model =
                            followersModelObj?.followersItemList[index] ??
                                FollowersItemModel();
                        return FollowersItemWidget(
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
