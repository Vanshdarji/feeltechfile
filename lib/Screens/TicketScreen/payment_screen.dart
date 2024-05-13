import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

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
                    height: main_Height*0.35,
                    decoration: BoxDecoration(
                      color: Color(0xFF2e3350),
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
                    ),
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
                                        style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),
                                      ),
                                      33.widthBox,
                                      Text(":",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),),
                                      10.widthBox,
                                      Text("Palace Albany Theatre",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400),)
                                    ],
                                  ),
                                  10.heightBox,
                                  Row(
                                    children: [
                                      Text(
                                        "SHOWTIME",
                                        style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),
                                      ),
                                      22.widthBox,
                                      Text(":",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),),
                                      10.widthBox,
                                      Text("09:00AM",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),)
                                    ],
                                  ),
                                  10.heightBox,
                                  Row(
                                    children: [
                                      Text(
                                        "AVAILABLE IN",
                                        style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),
                                      ),
                                      10.widthBox,
                                      Text(":",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),),
                                      10.widthBox,
                                      Text("3D",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),)
                                    ],
                                  ),
                                  10.heightBox,
                                  Row(
                                    children: [
                                      Text(
                                        "DATE",
                                        style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),
                                      ),
                                    58.widthBox,
                                      Text(":",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),),
                                      10.widthBox,
                                      Text("23 Dec 2019",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),)
                                    ],
                                  ),
                                  10.heightBox,
                                  Row(
                                    children: [
                                      Text(
                                        "SEATS",
                                        style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),
                                      ),
                                      52.widthBox,
                                      Text(":",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),),
                                      10.widthBox,
                                      Text("F Row/F06, F07 & F08",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),)
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
                ],
              ),
            )));
  }
}
