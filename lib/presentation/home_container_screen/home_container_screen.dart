import 'bloc/home_container_bloc.dart';import 'models/home_container_model.dart';import 'package:flutter/material.dart';import 'package:ranjeet_social_media/core/app_export.dart';import 'package:ranjeet_social_media/presentation/all_activity_page/all_activity_page.dart';import 'package:ranjeet_social_media/presentation/home_page/home_page.dart';import 'package:ranjeet_social_media/presentation/profile_two_page/profile_two_page.dart';import 'package:ranjeet_social_media/presentation/trending_sounds_tab_container_page/trending_sounds_tab_container_page.dart';import 'package:ranjeet_social_media/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<HomeContainerBloc>(create: (context) => HomeContainerBloc(HomeContainerState(homeContainerModelObj: HomeContainerModel()))..add(HomeContainerInitialEvent()), child: HomeContainerScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<HomeContainerBloc, HomeContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homePage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));})));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homePage; case BottomBarEnum.Discover: return AppRoutes.trendingSoundsTabContainerPage; case BottomBarEnum.Inbox: return AppRoutes.allActivityPage; case BottomBarEnum.Profile: return AppRoutes.profileTwoPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homePage: return HomePage.builder(context); case AppRoutes.trendingSoundsTabContainerPage: return TrendingSoundsTabContainerPage.builder(context); case AppRoutes.allActivityPage: return AllActivityPage.builder(context); case AppRoutes.profileTwoPage: return ProfileTwoPage.builder(context); default: return DefaultWidget();} } 
 }
