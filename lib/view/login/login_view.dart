
import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm/res/colors/app_colors.dart';
import 'package:flutter_getx_mvvm/res/components/round_button.dart';
import 'package:flutter_getx_mvvm/utils/utils.dart';
import 'package:flutter_getx_mvvm/view/login/widgets/button_widget.dart';
import 'package:flutter_getx_mvvm/view/login/widgets/input_email_widget.dart';
import 'package:flutter_getx_mvvm/view/login/widgets/input_password_widget.dart';
import 'package:flutter_getx_mvvm/view_models/controller/login/login_view_model.dart';
import 'package:get/get.dart';

class LoginVIew extends StatefulWidget {
  const LoginVIew({super.key});

  @override
  State<LoginVIew> createState() => _LoginVIewState();
}

class _LoginVIewState extends State<LoginVIew> {

  final loginViewModel = Get.put(LoginViewModel());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login_Screen'.tr, style: TextStyle(
          color: AppColors.whiteColor
        ),),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    InputEmailWidget(),
                    SizedBox(height: 10,),
                    InputPasswordWidget()
            ],)),
            SizedBox(height: 40,),
            ButtonWidget(formkey: _formKey,)
          ],
        ),
      ),
    );
  }
}
