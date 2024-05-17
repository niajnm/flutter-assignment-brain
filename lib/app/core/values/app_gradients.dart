import 'package:flutter/cupertino.dart';

import 'app_colors.dart';

abstract class AppGradients {
  static const LinearGradient horizontalCalendarGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.primary200, AppColors.primary300],
  );
  static const LinearGradient datePickerGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.primary400, AppColors.primary300],
  );
}
