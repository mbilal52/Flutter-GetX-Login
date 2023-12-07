


import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm/data/app_exceptions.dart';
import 'package:flutter_getx_mvvm/res/assets/image_assets.dart';
import 'package:flutter_getx_mvvm/res/colors/app_colors.dart';
import 'package:flutter_getx_mvvm/res/components/internet_exception_widget.dart';
import 'package:flutter_getx_mvvm/res/components/round_button.dart';
import 'package:flutter_getx_mvvm/res/fonts/app_fonts.dart';
import 'package:flutter_getx_mvvm/utils/utils.dart';
import 'package:flutter_getx_mvvm/view_models/splash/splash_services.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashScreenColor,
      body: Center(
        child: Text("welcome_back".tr, textAlign: TextAlign.center, style: TextStyle(color: AppColors.whiteColor),),
      )
    );
  }
}
