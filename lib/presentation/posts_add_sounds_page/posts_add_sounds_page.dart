import '../posts_add_sounds_page/widgets/listplay5_item_widget.dart';
import 'bloc/posts_add_sounds_bloc.dart';
import 'models/listplay5_item_model.dart';
import 'models/posts_add_sounds_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PostsAddSoundsPage extends StatefulWidget {
  @override
  _PostsAddSoundsPageState createState() => _PostsAddSoundsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<PostsAddSoundsBloc>(
      create: (context) => PostsAddSoundsBloc(PostsAddSoundsState(
        postsAddSoundsModelObj: PostsAddSoundsModel(),
      ))
        ..add(PostsAddSoundsInitialEvent()),
      child: PostsAddSoundsPage(),
    );
  }
}

class _PostsAddSoundsPageState extends State<PostsAddSoundsPage>
    with AutomaticKeepAliveClientMixin<PostsAddSoundsPage> {
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
                child: BlocSelector<PostsAddSoundsBloc, PostsAddSoundsState,
                    PostsAddSoundsModel?>(
                  selector: (state) => state.postsAddSoundsModelObj,
                  builder: (context, postsAddSoundsModelObj) {
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
                          postsAddSoundsModelObj?.listplay5ItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        Listplay5ItemModel model =
                            postsAddSoundsModelObj?.listplay5ItemList[index] ??
                                Listplay5ItemModel();
                        return Listplay5ItemWidget(
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
