import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../const.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({
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
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SvgPicture.asset(
                icon,
                alignment: Alignment.center,
                height: 25,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                overflow: TextOverflow.clip,
                text,
                style: const TextStyle(color: white, fontSize: 14),
              )
            ],
          ),
        ),
      ),
    );
  }
}
