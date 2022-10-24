import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../const.dart';

Future<dynamic> comingSoon(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: white,
          alignment: Alignment.center,
          clipBehavior: Clip.antiAlias,
          insetAnimationCurve: Curves.fastLinearToSlowEaseIn,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            padding:
                const EdgeInsets.only(bottom: 38.0, left: 38.0, right: 38.0),
            child: FittedBox(
              child: Column(
                children: [
                  Lottie.asset(
                    "assets/json/gift.json",
                    height: 150,
                  ),
                  const Text("Silahkan Tunggu",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const Text("Sesuatu yang besar akan segera hadir!",
                      style: TextStyle(fontSize: 14)),
                  // const SizedBox(
                  //   height: 30.0,
                  // ),
                  // TextButton(
                  //     style: ButtonStyle(
                  //         alignment: Alignment.center,
                  //         backgroundColor: MaterialStateProperty.all(green),
                  //         fixedSize: MaterialStateProperty.all(Size(120, 20)),
                  //         visualDensity: VisualDensity.compact,
                  //         padding:
                  //             MaterialStateProperty.all(EdgeInsets.all(8))),
                  //     onPressed: () {
                  //       Navigator.of(context).pop();
                  //     },
                  //     child: Text(
                  //       "Tutup",
                  //       style: TextStyle(color: white, fontSize: 12),
                  //     ))
                ],
              ),
            ),
          ),
        );
      });
}
