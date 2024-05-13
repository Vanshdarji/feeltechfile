import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

bool card = true;
bool card2 = false;
bool card3 = false;
bool card4 = false;

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xff1f203c),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: main_Height * 0.35,
                    decoration: BoxDecoration(
                        color: Color(0xFF2e3350),
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(30))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  Text(
                                    "Payment",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        10.heightBox,
                        Center(
                          child: Text(
                            "Pokemon Detective Pikachu",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        5.heightBox,
                        Center(
                          child: Text(
                            "Adventure, Family, Fantasy",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        20.heightBox,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "THEATER",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      33.widthBox,
                                      Text(
                                        ":",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      10.widthBox,
                                      Text(
                                        "Palace Albany Theatre",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                  10.heightBox,
                                  Row(
                                    children: [
                                      Text(
                                        "SHOWTIME",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      22.widthBox,
                                      Text(
                                        ":",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      10.widthBox,
                                      Text(
                                        "09:00AM",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                  10.heightBox,
                                  Row(
                                    children: [
                                      Text(
                                        "AVAILABLE IN",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      10.widthBox,
                                      Text(
                                        ":",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      10.widthBox,
                                      Text(
                                        "3D",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                  10.heightBox,
                                  Row(
                                    children: [
                                      Text(
                                        "DATE",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      58.widthBox,
                                      Text(
                                        ":",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      10.widthBox,
                                      Text(
                                        "23 Dec 2019",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                  10.heightBox,
                                  Row(
                                    children: [
                                      Text(
                                        "SEATS",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      52.widthBox,
                                      Text(
                                        ":",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      10.widthBox,
                                      Text(
                                        "F Row/F06, F07 & F08",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                width: main_Width * 0.25,
                                height: main_Height * 0.15,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment(0.8, 1),
                                    colors: <Color>[
                                      const Color(0xFFF09869),
                                      const Color(0xFF7D29C7),
                                    ],
                                    tileMode: TileMode.mirror,
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.play_circle_outline_outlined,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    Text(
                                      "Trial Video",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  20.heightBox,
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 25)),
                      Text(
                        "Select your Card to Continue Payment",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  10.heightBox,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              card = !card;
                            });
                          },
                          child: Container(
                              width: main_Width * 0.20,
                              height: main_Height * 0.06,
                              alignment:
                                  Alignment.center, // Alignment as center
                              decoration: BoxDecoration(
                                // TODO: you can change here gradient color
                                gradient: LinearGradient(
                                  colors: card
                                      ? [
                                          const Color(0xFFF09869),
                                          const Color(0xFFC729B2),
                                        ]
                                      : [Color(0xFF2e3350), Color(0xFF2e3350)],
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Image.asset(
                                "Assets/images/visa.png",
                                height: 20,
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              card2 = !card2;
                            });
                          },
                          child: Container(
                              width: main_Width * 0.20,
                              height: main_Height * 0.06,
                              alignment:
                                  Alignment.center, // Alignment as center
                              decoration: BoxDecoration(
                                // TODO: you can change here gradient color
                                gradient: LinearGradient(
                                  colors: card2
                                      ? [
                                          const Color(0xFFF09869),
                                          const Color(0xFFC729B2),
                                        ]
                                      : [Color(0xFF2e3350), Color(0xFF2e3350)],
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Image.asset(
                                "Assets/images/mastercard.png",
                                height: 25,
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              card3 = !card3;
                            });
                          },
                          child: Container(
                              width: main_Width * 0.20,
                              height: main_Height * 0.06,
                              alignment:
                                  Alignment.center, // Alignment as center
                              decoration: BoxDecoration(
                                // TODO: you can change here gradient color
                                gradient: LinearGradient(
                                  colors: card3
                                      ? [
                                          const Color(0xFFF09869),
                                          const Color(0xFFC729B2),
                                        ]
                                      : [Color(0xFF2e3350), Color(0xFF2e3350)],
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Image.asset(
                                "Assets/images/card1.png",
                                height: 20,
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              card4 = !card4;
                            });
                          },
                          child: Container(
                              width: main_Width * 0.20,
                              height: main_Height * 0.06,
                              alignment:
                                  Alignment.center, // Alignment as center
                              decoration: BoxDecoration(
                                // TODO: you can change here gradient color
                                gradient: LinearGradient(
                                  colors: card4
                                      ? [
                                          const Color(0xFFF09869),
                                          const Color(0xFFC729B2),
                                        ]
                                      : [Color(0xFF2e3350), Color(0xFF2e3350)],
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add_circle,
                                    color: Color(0xFF1F203B),
                                  ),
                                  Text(
                                    "ADD CARD",
                                    style: TextStyle(
                                        color: Color(0xFF1F203B),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  10.heightBox,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFB0B6BA))),
                          labelText: 'CARDHOLDER NAME',
                          labelStyle: TextStyle(
                              fontSize: 12, color: Color(0xFFB0B6BA))),
                    ),
                  ),
                  // 10.heightBox,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFB0B6BA))),
                          labelText: 'CARD Number',
                          labelStyle: TextStyle(
                              fontSize: 12, color: Color(0xFFB0B6BA))),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        width: 180,
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFB0B6BA))),
                              labelText: 'MONTH/YEAR',
                              labelStyle: TextStyle(
                                  fontSize: 12, color: Color(0xFFB0B6BA))),
                        ),
                      ),
                      30.widthBox,
                      Container(
                        width: 150,
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFB0B6BA))),
                              labelText: 'CVV',
                              labelStyle: TextStyle(
                                  fontSize: 12, color: Color(0xFFB0B6BA))),
                        ),
                      )
                    ],
                  ),
                  20.heightBox,
                  Container(
                    // height: main_Height,
                    decoration: BoxDecoration(
                        color: Color(0xFF2e3350),
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          30.heightBox,
                          Row(
                            children: [
                              Text(
                                "Summary",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          10.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "SUB TOTAL",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                ":",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Rs.32.24",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          10.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "INTERNET HANDING FEES",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                ":",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                              55.widthBox,
                              Text(
                                "Rs.05:58",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          10.heightBox,
                          Divider().box.width(main_Width * 0.90).make(),
                          10.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "TOTAL FEES",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                ":",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Rs.37.82",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          10.heightBox,
                          Center(
                        child: Container(
                                width: main_Width * 0.70,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment(0.8, 1),
                                    colors: [
                                      Color(0xFFFB6E37),
                                      Color(0xFF7D37FB)
                                    ],
                                    tileMode: TileMode.mirror,
                                  ),
                                ),
                                child: TextButton(
                                    onPressed: () {
                                    },
                                    child: Text(
                                      "Pay Rs.37.82",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    )),
                              ),
                      ),
                      10.heightBox,
                        ],
                      ),
                    ),
                  ),
                  10.heightBox,
                ],
              ),
            )));
  }
}
