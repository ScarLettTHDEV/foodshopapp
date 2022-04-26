import 'package:flutter/material.dart';
import 'package:foodshop/%20constants/colors_theme.dart';
import 'package:foodshop/widgets/detail_pagebuger.dart';

import '../widgets/list_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          TopBar(size),
          SizedBox(height: 10),
          Container(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => DetailPageBuger(
                          imgthumbnail: 'assets/image1.png',
                          name: 'Burger Reguler')),
                    ));
              },
              child: ListModel(
                img: 'assets/image1.png',
                discount: 'Rp 8.000',
                fullprice: 'Rp 12.000',
                imgtitle: 'assets/promo.png',
                textnamemenu: 'Burger Reguler',
                status: 'Free Delivery',
              ),
            ),
          ),
          Container(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => DetailPageBuger(
                            imgthumbnail: 'assets/image2.png',
                            name: 'Paket Burger 1'))));
              },
              child: ListModel(
                img: 'assets/image2.png',
                discount: 'Rp 22.000',
                fullprice: 'Rp 28.000',
                imgtitle: 'assets/terlaris.png',
                textnamemenu: 'Paket Burger 1',
                status: 'Free Delivery',
              ),
            ),
          ),
          Container(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => DetailPageBuger(
                          imgthumbnail: 'assets/image3.png',
                          name: 'Paket Burger 2')),
                    ));
              },
              child: ListModel(
                img: 'assets/image3.png',
                discount: 'Rp 18.000',
                fullprice: 'Rp 25.000',
                imgtitle: 'assets/terlaris.png',
                textnamemenu: 'Paket Burger 2',
                status: 'Free Delivery',
              ),
            ),
          ),
          Container(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => DetailPageBuger(
                          imgthumbnail: 'assets/image4.png',
                          name: 'Paket Burger 3')),
                    ));
              },
              child: ListModel(
                img: 'assets/image4.png',
                discount: 'Rp 16.000',
                fullprice: 'Rp 22.000',
                imgtitle: 'assets/terlaris.png',
                textnamemenu: 'Paket Burger 3',
                status: 'Free Delivery',
              ),
            ),
          ),
        ]),
      ),
    );
  }

  SingleChildScrollView TopBar(Size size) {
    return SingleChildScrollView(
      child: Container(
        width: size.width,
        padding: EdgeInsets.only(top: 60, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Robih',
              style: poppinsTextStyle.copyWith(
                  fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'Selamat datang di Buger jawa',
              style: poppinsTextStyle.copyWith(
                  color: Colors.black.withOpacity(0.3),
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Recomended Menu',
              style: poppinsTextStyle.copyWith(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
