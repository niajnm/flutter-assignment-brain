import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assessment/app/core/values/app_colors.dart';
import 'package:flutter_assessment/app/core/values/app_values.dart';
import 'package:flutter_assessment/app/core/widget/button/ripple.dart';
import 'package:flutter_assessment/app/modules/setting/widget/theme_dialog.dart';
import 'package:flutter_assessment/app/utils/context_ext.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
      ),
      body: ListView(
        children: [
          Ripple(
            onTap: () {
              _showThemeDialog(context);
            },
            child: const ListTile(
              title: Text("Theme"),
              trailing: Icon(
                Icons.chevron_right,
                color: AppColors.neutralLightGray,
                size: AppValues.iconSize_24,
              ),
            ),
          ),
          Divider(
            height: 1,
            color: Theme.of(context).dividerColor,
          ),
          const ListTile(
            title: Text("Contacts"),
          ),
          Divider(
            height: 1,
            color: Theme.of(context).dividerColor,
          ),
          Divider(
            height: 1,
            color: Theme.of(context).dividerColor,
          )
        ],
      ),
    );
  }

  Future<void> _showThemeDialog(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          insetPadding: const EdgeInsets.all(AppValues.margin),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppValues.radius)),
          ),
          title: Text(
            "SelectLanguage",
            style: Theme.of(context).textTheme.labelLarge,
          ),
          content: ThemeSelectionDialog(),
        );
      },
    );
  }
}
