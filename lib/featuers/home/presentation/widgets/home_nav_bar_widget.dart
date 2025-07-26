import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/generated/assets.dart';
import 'package:dalel/featuers/cart/presentation/views/cart_view.dart';
import 'package:dalel/featuers/home/presentation/views/home_view.dart';
import 'package:dalel/featuers/profile/presentation/views/profile_view.dart';
import 'package:dalel/featuers/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

PersistentTabController _controller = PersistentTabController();

class HomeNavBarWidget extends StatelessWidget {
  const HomeNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      items: _navBarsItems(),
      controller: _controller,
      navBarStyle: NavBarStyle.style12,
      backgroundColor: AppColors.primarycolor,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(10),
        ),
      ),
    );
  }
}

List<Widget> _buildScreens() {
  return [HomeView(), CartView(), SearchView(), ProfileView()];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.imagesActivehome),
      inactiveIcon: SvgPicture.asset(Assets.imagesHome),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.imagesActiveshoppingCart),
      inactiveIcon: SvgPicture.asset(Assets.imagesCart),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.imagesActiveSearch),
      inactiveIcon: SvgPicture.asset(Assets.imagesSearch),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.imagesActiveperson),
      inactiveIcon: SvgPicture.asset(Assets.imagesPerson),
    ),
  ];
}
