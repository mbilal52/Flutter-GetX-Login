

import 'package:get/get_navigation/src/root/internacionalization.dart';

 class Languages extends Translations{

  @override
  Map<String, Map<String, String>> get keys => {
    'en_Us' : {
      'email_hint' : 'Enter email',
      'internet_exception' : 'Check your internet connection!! \n and Try again',
      'general_exception' : "We're unable to process your request!! \n please try again",
      'welcome_back' : 'Welcome\n back',
      'login_Screen' : 'Login Screen',
      'login' : 'Login',
      'email_hint' : 'Email',
      'password_hint' : 'Password',
      'enter_email' : "Enter email please!!",
      'enter_password' : 'Enter password Please!!',

    },
    'ur_PK' : {
      'email_hint' : 'ای میل درج کریں'
    }
  };
}