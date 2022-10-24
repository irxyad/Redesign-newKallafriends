import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:re_kalla_friends/widgets/news.dart';
import 'const.dart';
import 'methods/coming_soon.dart';
import 'widgets/events.dart';
import 'widgets/menu_points.dart';
import 'widgets/navbar.dart';
import 'widgets/products_services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            expandedHeight: 550,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Container(
                    height: 370,
                    decoration: BoxDecoration(
                        color: green,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/bg_sliver.png",
                          ),
                          fit: BoxFit.cover,
                        )),
                    child: SafeArea(
                      top: true,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Padding(
                          padding: hPadding,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  // const Spacer(),

                                  Center(
                                    child: Container(
                                      color: Colors.transparent,
                                      height: 155,
                                      width: 140,
                                      child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: disabled,
                                            radius: 70,
                                            child: Image.asset(
                                              "assets/images/avatar.png",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Positioned(
                                            top: 0,
                                            right: 0,
                                            child: GestureDetector(
                                              onTap: () {
                                                comingSoon(context);
                                              },
                                              child: CircleAvatar(
                                                radius: 18,
                                                backgroundColor: green,
                                                child: CircleAvatar(
                                                    radius: 15,
                                                    backgroundColor: darkGreen,
                                                    child: SvgPicture.asset(
                                                      "assets/icons/ic_notif.svg",
                                                      height: 17,
                                                    )),
                                              ),
                                            ),
                                          ),
                                          const Positioned(
                                            bottom: 0,
                                            child: Image(
                                                height: 28,
                                                image: AssetImage(
                                                    "assets/images/badge.png")),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  // const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      comingSoon(context);
                                    },
                                    child: SvgPicture.asset(
                                      "assets/icons/ic_scan.svg",
                                      height: 30,
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 14.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Selamat Siang,",
                                      style: TextStyle(
                                          color: white,
                                          fontFamily: "InterMedium",
                                          fontSize: 14),
                                    ),
                                    Text(
                                      "Irxyad",
                                      style: TextStyle(
                                          color: yellow,
                                          fontFamily: "InterBold",
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: darkGreen,
                                      borderRadius: BorderRadius.circular(100)),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 4.0, horizontal: 8.0),
                                  child: const Text(
                                    "10.000 Points",
                                    style:
                                        TextStyle(color: white, fontSize: 12),
                                  ),
                                ),
                              ),
                              MenuPoints(tStyle: tStyle),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  ProductandServices(tStyle: tStyle),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(addSemanticIndexes: false, [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 19.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Event Seru",
                      style: TextStyle(
                          color: black, fontFamily: "InterBold", fontSize: 14),
                    ),
                    Text(
                      "Lihat Semua",
                      style: TextStyle(
                          color: green,
                          fontFamily: "InterMedium",
                          fontWeight: FontWeight.w700,
                          fontSize: 12),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                clipBehavior: Clip.antiAlias,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Events(
                      image: "assets/images/event_kalla_youth.png",
                      location: "Makassar",
                      nameEvents: "KALLA YOUTH FEST 2022",
                      price: "Rp.1.250.00",
                    ),
                    Events(
                      image: "assets/images/events.png",
                      location: "Makassar",
                      nameEvents: "Kimoka Fest 2022",
                      price: "Rp.50.000.00",
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 19.0, vertical: 10.0),
                child: Text(
                  "Berita Terbaru",
                  style: TextStyle(
                      color: black, fontFamily: "InterBold", fontSize: 14),
                ),
              ),
              const News(
                  company: "Kalla Kars",
                  nameNews:
                      "Kalla Kars Grand Opening Showroom & Bengkel Benelli-Keeway",
                  image: "assets/images/news4.jpg",
                  category: "Otomotif",
                  date: "04 Maret 2022",
                  imageCompany: "assets/images/kallaKars.png"),
              const News(
                  company: "Kalla Kars",
                  nameNews: "JKOC Sukses Tuntaskan Tour Mandalika-Bali-Bromo ",
                  image: "assets/images/news.png",
                  category: "Otomotif",
                  date: "23 Maret 2022",
                  imageCompany: "assets/images/kallaKars.png"),
              const News(
                  company: "Kalla Kars",
                  nameNews:
                      "Bikers Benelli Big Bike Sukses Tuntaskan Touring 1.200 Km",
                  image: "assets/images/news5.jpg",
                  category: "Otomotif",
                  date: "23 Maret 2022",
                  imageCompany: "assets/images/kallaKars.png"),
              const News(
                  company: "Kalla Beton",
                  nameNews:
                      "HUT ke-24 Kalla Beton Turut Diwarnai Peluncuran Produk...",
                  image: "assets/images/news3.JPG",
                  category: "Manufacture",
                  date: "27 Januari 2020",
                  imageCompany: "assets/images/kallabeton.png"),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
