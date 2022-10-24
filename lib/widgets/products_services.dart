import 'package:flutter/material.dart';

import '../const.dart';
import '../methods/coming_soon.dart';
import 'menu_services.dart';

class ProductandServices extends StatelessWidget {
  const ProductandServices({
    Key? key,
    required this.tStyle,
  }) : super(key: key);

  final TextTheme tStyle;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19.0, vertical: 10),
        child: Container(
          height: 220,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 8,
                    spreadRadius: 1,
                    color: black.withOpacity(.2),
                    offset: const Offset(0, 2))
              ]),
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  "Produk dan Layanan",
                  style: TextStyle(
                      color: black, fontFamily: "InterBold", fontSize: 14),
                ),
              ),
              Expanded(
                child: GridView(
                  clipBehavior: Clip.antiAlias,
                  addRepaintBoundaries: true,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(5.0),
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      childAspectRatio: 1,
                      crossAxisCount: 4),
                  children: [
                    ServiceMenu(
                        tStyle: tStyle,
                        icon: "assets/icons/ic_otomotif.png",
                        text: "Otomotif",
                        function: () {
                          comingSoon(context);
                        }),
                    ServiceMenu(
                        tStyle: tStyle,
                        icon: "assets/icons/ic_edukasi.png",
                        text: "Edukasi",
                        function: () {
                          comingSoon(context);
                        }),
                    ServiceMenu(
                        tStyle: tStyle,
                        icon: "assets/icons/ic_hospitality.png",
                        text: "Hospitality",
                        function: () {
                          comingSoon(context);
                        }),
                    ServiceMenu(
                        tStyle: tStyle,
                        icon: "assets/icons/ic_transportasi.png",
                        text: "Transportasi",
                        function: () {
                          comingSoon(context);
                        }),
                    ServiceMenu(
                        tStyle: tStyle,
                        icon: "assets/icons/ic_logistik.png",
                        text: "Logistik",
                        function: () {
                          comingSoon(context);
                        }),
                    ServiceMenu(
                        tStyle: tStyle,
                        icon: "assets/icons/ic_perumahan.png",
                        text: "Perumahan",
                        function: () {
                          comingSoon(context);
                        }),
                    ServiceMenu(
                        tStyle: tStyle,
                        icon: "assets/icons/ic_konstruksi.png",
                        text: "Konstruksi",
                        function: () {
                          comingSoon(context);
                        }),
                    ServiceMenu(
                        tStyle: tStyle,
                        icon: "assets/icons/ic_food.png",
                        text: "Food Event",
                        function: () {
                          comingSoon(context);
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
