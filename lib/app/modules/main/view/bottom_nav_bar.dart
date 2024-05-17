import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/core/values/app_colors.dart';
import 'package:flutter_assessment/app/core/values/app_values.dart';
import 'package:flutter_assessment/app/core/widget/image/asset_image_view.dart';
import 'package:flutter_assessment/app/modules/main/controller/bottom_nav_controller.dart';
import 'package:flutter_assessment/app/modules/main/model/bottom_nav_item.dart';
import 'package:flutter_assessment/app/modules/main/model/menu_code.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatefulWidget {
  final Function(MenuCode menuCode) onNewMenuSelected;
  const BottomNavBar({Key? key, required this.onNewMenuSelected})
      : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final Key bottomNavKey = GlobalKey();

  final Color _selectedItemColor = AppColors.bottomItemSelectedColor;
  @override
  Widget build(BuildContext context) {
    List<BottomNavItem> navItems = _getNavItemsData();
    var navIndex = Provider.of<BottomNavController>(context, listen: true);
    //var navIndex = ref.watch(navProvider);

    return Container(
      decoration: _getDecoration(context),
      margin: EdgeInsets.zero,
      child: BottomNavigationBar(
        key: bottomNavKey,
        items: _getBottomNavItems(context, navItems, navIndex.selectedIndex),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).colorScheme.background,
        selectedItemColor: _selectedItemColor,
        unselectedItemColor: Theme.of(context).iconTheme.color,
        currentIndex: navIndex.selectedIndex,
        onTap: (index) => _onTapNavItem(index, navItems[index]),
      ),
    );
  }

  List<BottomNavigationBarItem> _getBottomNavItems(
      BuildContext context, List<BottomNavItem> navItems, int selectedIndex) {
    return navItems.map(
      (BottomNavItem navItem) {
        int index = navItems.indexOf(navItem);
        bool isSelectedItem = index == selectedIndex;

        return BottomNavigationBarItem(
          icon: navItem.isIconFromIconData
              ? _getNavItemIconFromIconData(navItem, isSelectedItem)
              : _getNavItemIconFromAsset(context, navItem, isSelectedItem),
          label: navItem.navTitle,
          tooltip: "",
        );
      },
    ).toList();
  }

  Widget _getNavItemIconFromIconData(
    BottomNavItem navItem,
    bool isSelectedItem,
  ) {
    return Icon(
      isSelectedItem ? navItem.activeIconData : navItem.regularIconData,
      size: AppValues.iconDefaultSize.r,
    );
  }

  Widget _getNavItemIconFromAsset(
    BuildContext context,
    BottomNavItem navItem,
    bool isSelectedItem,
  ) {
    return AssetImageView(
      fileName:
          isSelectedItem ? navItem.activeAssetIcon : navItem.regularAssetIcon,
      height: AppValues.iconDefaultSize.r,
      width: AppValues.iconDefaultSize.r,
      color: isSelectedItem
          ? _selectedItemColor
          : Theme.of(context).iconTheme.color,
    );
  }

  void _onTapNavItem(
    int index,
    BottomNavItem navItem,
  ) {
    Provider.of<BottomNavController>(context, listen: false)
        .onIndexChanged(index);
    //ref.read(navProvider.notifier).onIndexChanged(index);
    widget.onNewMenuSelected(navItem.menuCode);
  }

  List<BottomNavItem> _getNavItemsData() {
    return [
      BottomNavItem.fromIconData(
        navTitle: "Home",
        activeIcon: Icons.home_sharp,
        regularIcon: Icons.home_outlined,
        menuCode: MenuCode.HOME,
      ),
      BottomNavItem.fromIconData(
        navTitle: "Setting",
        activeIcon: Icons.calendar_today_outlined,
        regularIcon: Icons.calendar_today_outlined,
        menuCode: MenuCode.SETTING,
      ),
    ];
  }

  BoxDecoration _getDecoration(BuildContext context) => BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.colorBlack.withAlpha(40),
            blurRadius: 5.0, // soften the shadow
            spreadRadius: 0.0, //extend the shadow
            offset: const Offset(
              0.0,
              -5.0,
            ),
          )
        ],
        color: Theme.of(context).bottomAppBarTheme.color,
      );
}
