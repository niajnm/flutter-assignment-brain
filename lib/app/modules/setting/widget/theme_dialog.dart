import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/core/base/app_theme.dart';
import 'package:flutter_assessment/app/core/base/base_widget_mixin.dart';
import 'package:flutter_assessment/app/core/values/app_values.dart';
import 'package:flutter_assessment/app/core/widget/button/app_radio_button.dart';
import 'package:flutter_assessment/app/core/widget/button/dialog_button_layout.dart';
import 'package:flutter_assessment/app/modules/setting/controller/theme_controller.dart';
import 'package:provider/provider.dart';

class ThemeSelectionDialog extends StatelessWidget with BaseWidgetMixin {
  ThemeSelectionDialog({super.key});

  @override
  Widget body(BuildContext context) {
    //final selectedTheme = ref.watch(themeProvider);
    final selectedTheme =
        Provider.of<ThemeController>(context, listen: true).currentTheme;
    final themeController =
        Provider.of<ThemeController>(context, listen: false);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppRadioButton(
          name: "System theme",
          data: AppTheme.SYSTEM,
          groupValue: selectedTheme,
          onTap: (value) {
            themeController.setTheme(value!);
          },
        ),
        AppRadioButton(
          name: "Dark",
          data: AppTheme.DARK,
          groupValue: selectedTheme,
          onTap: (value) {
            themeController.setTheme(value!);
          },
        ),
        AppRadioButton(
          name: "Light",
          data: AppTheme.LIGHT,
          groupValue: selectedTheme,
          onTap: (value) {
            themeController.setTheme(value!);
          },
        ),
        const SizedBox(height: AppValues.extraLargeMargin),
        DialogButtonLayout(
          buttonText: "SaveTheme",
          onTapSave: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
