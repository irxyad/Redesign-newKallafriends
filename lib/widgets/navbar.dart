import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../const.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: green,
        elevation: 0,
        // iconSize: 12,

        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/ic_home_selected.svg",
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/ic_poling.svg",
                height: 24,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/ic_transaksi.svg",
                height: 24,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/ic_profile.svg",
                height: 24,
              ),
              label: ""),
        ]);
  }
}
