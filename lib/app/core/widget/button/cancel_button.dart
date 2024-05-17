import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/core/values/app_colors.dart';
import 'package:flutter_assessment/app/core/values/app_values.dart';
import 'package:flutter_assessment/app/core/widget/button/ripple.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CancelButton extends StatelessWidget {
  final String buttonText;
  final Function()? onTap;

  const CancelButton({
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
      decoration: BoxDecoration(
        borderRadius:
            const BorderRadius.all(Radius.circular(AppValues.radius_8)),
        color: _getCancelButtonColor(context),
      ),
      child: Ripple(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(AppValues.smallPadding.h),
          child: Center(
            child: Text(
              buttonText,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
        ),
      ),
    );
  }

  Color _getCancelButtonColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? AppColors.transparent
        : AppColors.neutralSeparator;
  }
}
