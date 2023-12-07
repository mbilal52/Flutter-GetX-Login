

import 'dart:async';
import 'package:flutter_getx_mvvm/res/routes/routes_name.dart';
import 'package:flutter_getx_mvvm/view_models/controller/user_preference/user_preference_view_model.dart';
import 'package:get/get.dart';

class SplashServices{

  UserPreference userPreference = UserPreference();

  void isLogin(){
    userPreference.getUser().then((value){

      print(value.token.toString());
      print(value.isLogin);

      if(value.isLogin == false || value.isLogin.toString() == 'null'){
        Timer(const Duration(seconds: 3) , () => Get.toNamed(RoutesName.loginScreen));
      }else{
        Timer(const Duration(seconds: 3) , () => Get.toNamed(RoutesName.homeView));
      }
    });
  }
}