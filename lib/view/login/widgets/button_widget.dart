

import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm/res/components/round_button.dart';
import 'package:flutter_getx_mvvm/view_models/controller/login/login_view_model.dart';
import 'package:get/get.dart';

class ButtonWidget extends StatelessWidget {

  final formkey;
  ButtonWidget({super.key, required this.formkey});

  final loginViewModel = Get.put(LoginViewModel());
  @override
  Widget build(BuildContext context) {
    return Obx(() => RoundButton(
        title: 'login'.tr,
        width: 350,
        loading: loginViewModel.loading.value ,
        onpress: (){
          if(formkey.currentState!.validate()){
            loginViewModel.loginApi();
          }
        }
    ));
  }
}
