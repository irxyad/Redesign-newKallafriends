import 'package:flutter/material.dart';

import '../methods/coming_soon.dart';
import 'main_menu.dart';

class MenuPoints extends StatelessWidget {
  const MenuPoints({
    Key? key,
    required this.tStyle,
  }) : super(key: key);

  final TextTheme tStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MainMenu(
              function: () {
                comingSoon(context);
              },
              tStyle: tStyle,
              icon: "assets/icons/ic_transfer.svg",
              text: "Transfer"),
          MainMenu(
              function: () {
                comingSoon(context);
              },
              tStyle: tStyle,
              icon: "assets/icons/ic_wallet.svg",
              text: "Top Up"),
          MainMenu(
              function: () {
                comingSoon(context);
              },
              tStyle: tStyle,
              icon: "assets/icons/ic_history.svg",
              text: "Riwayat"),
        ],
      ),
    );
  }
}
