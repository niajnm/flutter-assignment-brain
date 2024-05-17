import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/core/values/app_gradients.dart';
import 'package:flutter_assessment/app/core/values/app_values.dart';
import 'package:flutter_assessment/app/core/values/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'ripple.dart';

class GradientButton extends StatelessWidget {
  final String buttonText;
  final Function()? onTap;

  const GradientButton({
    Key? key,
    required this.buttonText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: AppValues.maxButtonWidth.w,
        maxHeight: AppValues.maxButtonHeight.h,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(AppValues.radius_8)),
        gradient: AppGradients.datePickerGradient,
      ),
      child: Ripple(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: AppValues.smallPadding.h,
            horizontal: AppValues.padding.w,
          ),
          child: Text(
            buttonText,
            style: datePickerSetButtonTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
