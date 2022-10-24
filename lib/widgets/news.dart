import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../const.dart';

class News extends StatelessWidget {
  const News({
    Key? key,
    required this.company,
    required this.nameNews,
    required this.image,
    required this.category,
    required this.date,
    required this.imageCompany,
  }) : super(key: key);
  final String company;
  final String date;
  final String category;
  final String nameNews;

  final String image;
  final String imageCompany;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19.0, vertical: 5.0),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        // color: Colors.red,
        // width: 30,
        height: 140,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: Get.width / 1.9,
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
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 83, 83, 83),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 11, vertical: 4),
                          child: Text(category,
                              style:
                                  const TextStyle(color: white, fontSize: 10)),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          nameNews,
                          style: const TextStyle(
                              color: black,
                              fontFamily: "InterBold",
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                                backgroundColor: white,
                                radius: 12,
                                child: Image.asset(
                                  fit: BoxFit.cover,
                                  imageCompany,
                                )),
                            const SizedBox(
                              width: 7,
                            ),
                            Text(
                              company,
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 83, 83, 83),
                                  // fontFamily: "InterMedium",
                                  fontSize: 10),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            const CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 83, 83, 83),
                                radius: 3),
                            const SizedBox(
                              width: 7,
                            ),
                            Text(
                              date,
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 83, 83, 83),
                                  fontFamily: "InterMedium",
                                  fontSize: 10),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                clipBehavior: Clip.antiAlias,
                height: 120,
                width: 120,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(14)),
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
