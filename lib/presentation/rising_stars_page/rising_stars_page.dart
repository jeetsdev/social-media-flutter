import '../rising_stars_page/widgets/listellipse2_item_widget.dart';
import 'bloc/rising_stars_bloc.dart';
import 'models/listellipse2_item_model.dart';
import 'models/rising_stars_model.dart';
import 'package:flutter/material.dart';
import 'package:ranjeet_social_media/core/app_export.dart';

// ignore_for_file: must_be_immutable
class RisingStarsPage extends StatefulWidget {
  @override
  _RisingStarsPageState createState() => _RisingStarsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<RisingStarsBloc>(
      create: (context) => RisingStarsBloc(RisingStarsState(
        risingStarsModelObj: RisingStarsModel(),
      ))
        ..add(RisingStarsInitialEvent()),
      child: RisingStarsPage(),
    );
  }
}

class _RisingStarsPageState extends State<RisingStarsPage>
    with AutomaticKeepAliveClientMixin<RisingStarsPage> {
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
                  top: 17,
                  right: 24,
                ),
                child: BlocSelector<RisingStarsBloc, RisingStarsState,
                    RisingStarsModel?>(
                  selector: (state) => state.risingStarsModelObj,
                  builder: (context, risingStarsModelObj) {
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
                          risingStarsModelObj?.listellipse2ItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        Listellipse2ItemModel model =
                            risingStarsModelObj?.listellipse2ItemList[index] ??
                                Listellipse2ItemModel();
                        return Listellipse2ItemWidget(
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
