
import 'package:flutter/cupertino.dart';
import 'package:flutter_getx_mvvm/res/colors/app_colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Utils{

    static void filedFocusChange(BuildContext context, FocusNode currentFocus, FocusNode nextFocus){
        currentFocus.unfocus();
        FocusScope.of(context).requestFocus(nextFocus);
    }


    static toastMessage(String message){
        Fluttertoast.showToast(msg: message,
        backgroundColor: AppColors.blackColor,
        gravity: ToastGravity.BOTTOM
        );
    }

    static toastMessageCentre(String message){
        Fluttertoast.showToast(msg: message,
            backgroundColor: AppColors.blackColor,
            gravity: ToastGravity.CENTER
        );
    }

    static snackBar(String title, String message){
        Get.snackbar(title, message);
    }
}