import 'package:flutter/material.dart';
import 'package:foodshop/%20constants/colors_theme.dart';

class ListModel extends StatelessWidget {
  String img;
  String imgtitle;
  String textnamemenu;
  String fullprice;
  String discount;
  String status;
  ListModel(
      {required this.img,
      required this.discount,
      required this.fullprice,
      required this.imgtitle,
      required this.textnamemenu,
      required this.status,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          margin: EdgeInsets.only(top: 20, left: 20),
          width: 402,
          height: 110,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 4, left: 4, bottom: 4, right: 25),
                child: Container(
                  width: 134,
                  height: 118,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.cover),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    imgtitle,
                    scale: 4,
                  ),
                  Text(
                    textnamemenu,
                    style: poppinsTextStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Stack(
                        children: [
                          Text(
                            fullprice,
                            style: poppinsTextStyle.copyWith(
                                color: greyColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 65,
                            height: 1,
                            color: greyColor,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        discount,
                        style: poppinsTextStyle.copyWith(
                            color: yellowColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Text(
                    'Free Delivery',
                    style: poppinsTextStyle.copyWith(
                      color: greyColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          )),
    ]);
  }
}
