

import 'package:flutter_getx_mvvm/res/routes/routes_name.dart';
import 'package:flutter_getx_mvvm/view/home/home_view.dart';
import 'package:flutter_getx_mvvm/view/login/login_view.dart';
import 'package:flutter_getx_mvvm/view/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {

  static appRoutes () => [
    GetPage(
        name: RoutesName.splashScreen,
        page: () => SplashScreen(),
        transitionDuration: Duration(milliseconds: 250),
        transition: Transition.leftToRightWithFade
    ),
    GetPage(
        name: RoutesName.loginScreen,
        page: () => LoginVIew(),
        transitionDuration: Duration(milliseconds: 250),
        transition: Transition.leftToRightWithFade
    ),
    GetPage(
        name: RoutesName.homeView,
        page: () => HomeView(),
        transitionDuration: Duration(milliseconds: 250),
        transition: Transition.leftToRightWithFade
    ),
  ];
}