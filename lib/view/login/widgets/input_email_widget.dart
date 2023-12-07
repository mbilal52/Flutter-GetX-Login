

import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm/utils/utils.dart';
import 'package:flutter_getx_mvvm/view_models/controller/login/login_view_model.dart';
import 'package:get/get.dart';

class InputEmailWidget extends StatelessWidget {
  const InputEmailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loginViewModel = Get.put(LoginViewModel());

    return TextFormField(
      validator: (value){
        if(value!.isEmpty){
          Utils.snackBar('email_hint'.tr, "enter_email".tr);
        }
      },
      controller: loginViewModel.emailController.value,
      focusNode: loginViewModel.emailFocusNode.value,
      onFieldSubmitted: (val){
        Utils.filedFocusChange(context, loginViewModel.emailFocusNode.value, loginViewModel.passwordFocusNode.value);
      },
      decoration: InputDecoration(
          hintText: 'email_hint'.tr,
          border: OutlineInputBorder(
              borderRadius:  BorderRadius.circular(10)
          )
      ),
    );
  }
}
