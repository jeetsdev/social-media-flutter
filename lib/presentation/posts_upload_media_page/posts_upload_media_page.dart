import '../posts_upload_media_page/widgets/gridcheckmark_item_widget.dart';
import 'bloc/posts_upload_media_bloc.dart';
import 'models/gridcheckmark_item_model.dart';
import 'models/posts_upload_media_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PostsUploadMediaPage extends StatefulWidget {
  @override
  _PostsUploadMediaPageState createState() => _PostsUploadMediaPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<PostsUploadMediaBloc>(
      create: (context) => PostsUploadMediaBloc(PostsUploadMediaState(
        postsUploadMediaModelObj: PostsUploadMediaModel(),
      ))
        ..add(PostsUploadMediaInitialEvent()),
      child: PostsUploadMediaPage(),
    );
  }
}

class _PostsUploadMediaPageState extends State<PostsUploadMediaPage>
    with AutomaticKeepAliveClientMixin<PostsUploadMediaPage> {
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
                child: BlocSelector<PostsUploadMediaBloc, PostsUploadMediaState,
                    PostsUploadMediaModel?>(
                  selector: (state) => state.postsUploadMediaModelObj,
                  builder: (context, postsUploadMediaModelObj) {
                    return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(
                          122,
                        ),
                        crossAxisCount: 3,
                        mainAxisSpacing: getHorizontalSize(
                          8,
                        ),
                        crossAxisSpacing: getHorizontalSize(
                          8,
                        ),
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: postsUploadMediaModelObj
                              ?.gridcheckmarkItemList.length ??
                          0,
                      itemBuilder: (context, index) {
                        GridcheckmarkItemModel model = postsUploadMediaModelObj
                                ?.gridcheckmarkItemList[index] ??
                            GridcheckmarkItemModel();
                        return GridcheckmarkItemWidget(
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
