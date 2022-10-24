import 'package:flutter/material.dart';

import '../const.dart';

class ServiceMenu extends StatelessWidget {
  const ServiceMenu({
    Key? key,
    required this.tStyle,
    required this.icon,
    required this.text,
    required this.function,
  }) : super(key: key);

  final TextTheme tStyle;
  final VoidCallback function;
  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: SizedBox(
        // color: Colors.red,
        // padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon, height: 30),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              overflow: TextOverflow.clip,
              text,
              style: const TextStyle(
                  color: black, fontSize: 12, fontFamily: "InterMedium"),
            )
          ],
        ),
      ),
    );
  }
}
