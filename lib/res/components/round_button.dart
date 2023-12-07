
import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm/res/colors/app_colors.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({super.key,
    this.buttonColor = AppColors.primaryButtonColor,
    this.textColor = AppColors.primaryTextColor,
    required this.title,
    required this.onpress,
    this.loading = false,
    this.height = 50,
    this.width = 60
  });

  final bool loading;
  final VoidCallback onpress;
  final String title;
  final double width, height;
  final Color textColor , buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: buttonColor,
        ),
        child: loading ? Center(child: CircularProgressIndicator(),) : Center(
          child: Text(title, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.whiteColor,),
          )
        )
      ),
    );
  }
}
