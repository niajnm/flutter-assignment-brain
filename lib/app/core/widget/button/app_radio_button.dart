import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/core/base/base_widget_mixin.dart';
import 'package:flutter_assessment/app/core/values/app_colors.dart';
import 'package:flutter_assessment/app/core/values/app_values.dart';
import 'package:flutter_assessment/app/core/values/text_style.dart';
import 'package:flutter_assessment/app/utils/context_ext.dart';

import 'ripple.dart';

class AppRadioButton<T> extends StatelessWidget with BaseWidgetMixin {
  Function(T?)? onTap;
  String name;
  T? data;
  T? groupValue;

  AppRadioButton({
    this.name = "",
    this.onTap,
    this.data,
    this.groupValue,
  });

  @override
  Widget body(BuildContext context) {
    return Ripple(
      onTap: () {
        if (onTap != null) {
          onTap!(data);
        }
      },
      child: ListTile(
        contentPadding: const EdgeInsets.all(AppValues.padding_zero),
        horizontalTitleGap: AppValues.margin_zero,
        title: Text(
          name,
          style: groupValue == data
              ? selectedRadioTextStyle
              : context.textTheme.bodyMedium,
        ),
        leading: Radio<T?>(
          value: data,
          groupValue: groupValue,
          onChanged: (T? value) {
            if (onTap != null) {
              onTap!(data);
            }
          },
          activeColor: AppColors.primary400,
        ),
      ),
    );
  }
}
