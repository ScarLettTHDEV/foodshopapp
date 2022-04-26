import 'package:flutter/material.dart';

import 'package:foodshop/%20constants/colors_theme.dart';
import 'package:foodshop/jsons/json_file.dart';

class DetailPage extends StatefulWidget {
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: size.width,
                height: 273,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Thumbnail.png'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 45, right: 10, left: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: yellowColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                          icon: Icon(
                            Icons.keyboard_arrow_left_sharp,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: yellowColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.share,
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 250,
            child: Container(
              width: size.width,
              height: 600,
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/promo.png',
                        scale: 2.5,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'Burger Regular',
                              style: poppinsTextStyle.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      number--;
                                      if (number <= 0) {
                                        number = 0;
                                      }
                                    });
                                  },
                                  child: Image.asset(
                                    'assets/minus.png',
                                    scale: 3.5,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 15, left: 15),
                                  child: Text(
                                    number.toString(),
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      number++;
                                    });
                                  },
                                  child: Image.asset(
                                    'assets/plus.png',
                                    scale: 3.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Rp 28.000',
                            style: poppinsTextStyle.copyWith(
                                color: greyColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Rp 22.000',
                            style: poppinsTextStyle.copyWith(
                                color: yellowColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Pilih Ukuran',
                        style: poppinsTextStyle.copyWith(
                            color: blackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          sizeburger.length,
                          (index) => Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: greyColor),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(sizeburger[index]['size1']),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Catatan Penjual',
                        style: poppinsTextStyle.copyWith(
                            color: blackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Pembelian diatas 5  item bonus satu burger promo berlaku hanya pengiriman radius 2 KM setiap pembelian mendapat 1 kupon burger10 kupon burger bisa ditukar dengan 1 burger',
                        style: poppinsTextStyle.copyWith(
                          color: greyColor,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Lokasi Burger Jawa',
                        style: poppinsTextStyle.copyWith(
                            color: blackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Image.asset(
                                  'assets/store.png',
                                  scale: 3.5,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Jl. Raya Mayong Jepara\nJawa Tengah',
                                style: poppinsTextStyle.copyWith(
                                  color: greyColor,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: greyColor,
                            size: 35,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: size.width,
                        height: 60,
                        decoration: BoxDecoration(
                          color: yellowColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextButton(
                            child: Text(
                              'Beli',
                              style: poppinsTextStyle.copyWith(
                                color: whiteColor,
                                fontSize: 20,
                              ),
                            ),
                            onPressed: () {}),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
