


import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm/res/colors/app_colors.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class GeneralExceptionWidget extends StatefulWidget {
  final VoidCallback onpress;

  const GeneralExceptionWidget({super.key, required this.onpress});

  @override
  State<GeneralExceptionWidget> createState() => _GeneralExceptionWidgetState();
}

class _GeneralExceptionWidgetState extends State<GeneralExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: height * .15,),
            Icon(Icons.cloud_off, color: AppColors.redColor,size: 50,),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(child: Text('general_exception'.tr)),
            ),
            SizedBox(height: height * .1,),
            InkWell(
              onTap: widget.onpress,
              child: Container(
                height: 44,
                width: 160,
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: Text(
                      'Retry',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.whiteColor)
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
