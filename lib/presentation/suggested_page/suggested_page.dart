import '../suggested_page/widgets/suggested_item_widget.dart';
import 'bloc/suggested_bloc.dart';
import 'models/suggested_item_model.dart';
import 'models/suggested_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SuggestedPage extends StatefulWidget {
  @override
  _SuggestedPageState createState() => _SuggestedPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SuggestedBloc>(
      create: (context) => SuggestedBloc(SuggestedState(
        suggestedModelObj: SuggestedModel(),
      ))
        ..add(SuggestedInitialEvent()),
      child: SuggestedPage(),
    );
  }
}

class _SuggestedPageState extends State<SuggestedPage>
    with AutomaticKeepAliveClientMixin<SuggestedPage> {
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
                child: BlocSelector<SuggestedBloc, SuggestedState,
                    SuggestedModel?>(
                  selector: (state) => state.suggestedModelObj,
                  builder: (context, suggestedModelObj) {
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
                          suggestedModelObj?.suggestedItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        SuggestedItemModel model =
                            suggestedModelObj?.suggestedItemList[index] ??
                                SuggestedItemModel();
                        return SuggestedItemWidget(
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
