import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../const.dart';

class Events extends StatelessWidget {
  const Events({
    Key? key,
    required this.location,
    required this.nameEvents,
    required this.price,
    required this.image,
  }) : super(key: key);
  final String location;
  final String nameEvents;
  final String price;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19.0, vertical: 5.0),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 8,
                  spreadRadius: 1,
                  color: black.withOpacity(.1),
                  offset: const Offset(0, 2))
            ]),
        // color: Colors.red,
        // width: 30,
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: Get.width / 2.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          location,
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontFamily: "InterMedium",
                              fontSize: 10),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          nameEvents,
                          style: const TextStyle(
                              color: black,
                              fontFamily: "InterBold",
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: darkGreen,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10)),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 11, vertical: 4),
                    child: Text(price,
                        style: const TextStyle(color: white, fontSize: 10)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: SizedBox(
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
