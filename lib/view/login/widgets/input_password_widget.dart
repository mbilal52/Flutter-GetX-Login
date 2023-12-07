

import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm/utils/utils.dart';
import 'package:flutter_getx_mvvm/view_models/controller/login/login_view_model.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class InputPasswordWidget extends StatelessWidget {
  const InputPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loginViewModel = Get.put(LoginViewModel());

    return TextFormField(
      obscureText: true,
      obscuringCharacter: "*",
      validator: (value){
        if(value!.isEmpty){
          Utils.snackBar('password_hint'.tr, "enter_password".tr);
        }
      },
      controller: loginViewModel.passwordController.value,
      focusNode: loginViewModel.passwordFocusNode.value,
      // onFieldSubmitted: (val){
      //   Utils.filedFocusChange(context, loginViewModel.passwordFocusNode.value, loginViewModel.passwordFocusNode.value);
      // },
      decoration: InputDecoration(
          hintText: 'password_hint'.tr,
          border: OutlineInputBorder(
              borderRadius:  BorderRadius.circular(10)
          )
      ),
    );
  }
}
