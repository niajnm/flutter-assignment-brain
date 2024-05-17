import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/core/values/app_values.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'cancel_button.dart';
import 'gradient_button.dart';

class DialogButtonLayout extends StatelessWidget {
  DialogButtonLayout({
    Key? key,
    required this.onTapSave,
    required this.buttonText,
  }) : super(key: key);

  final Function() onTapSave;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CancelButton(
              buttonText: "Cancel", onTap: (() => Navigator.of(context).pop())),
        ),
        SizedBox(width: AppValues.margin_8.w),
        Expanded(
          child: GradientButton(buttonText: buttonText, onTap: onTapSave),
        )
      ],
    );
  }
}
