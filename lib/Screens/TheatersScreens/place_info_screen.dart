import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:vanshtask1/Screens/HelperScreen/images.dart';
import 'package:vanshtask1/Screens/TheatersScreens/review_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class MovieTheaterInfo extends StatefulWidget {
  const MovieTheaterInfo({super.key});

  @override
  State<MovieTheaterInfo> createState() => _MovieTheaterInfoState();
}

class _MovieTheaterInfoState extends State<MovieTheaterInfo> {
  @override
  Widget build(BuildContext context) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff1f203c),
      body: Column(
        children: [
          Container(
            height: 35,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.8, 1),
                colors: <Color>[
                  const Color(0xFFF09869),
                  Color.fromARGB(255, 191, 102, 148),
                ],
                tileMode: TileMode.mirror,
              ),
            ),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 18,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReviewScreen()));
                  },
                  child: Container(
                    width: main_Width,
                    height:400,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25)),
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
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 40),
                          width: main_Width * 0.16,
                          child: Row(
                            children: [
                              Text(
                                "4.5",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              10.widthBox,
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 16,
                              ),
                            ],
                          )
                              .box
                              .padding(EdgeInsets.all(3))
                              .roundedSM
                              .border(color: Colors.white)
                              .make(),
                        ),
                        10.heightBox,
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 40)),
                            Text(
                              "Palace Albany Theater",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        5.heightBox,
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 40)),
                            Text(
                              "3D, Digital Media & Ultra HD",
                              overflow: TextOverflow.ellipsis,
                              style:
                                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400,fontSize: 12),
                            )
                          ],
                        ),
                        20.heightBox,
                      ],
                    ),
                  ),
                ),
                10.heightBox,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Surprisingly, there is a very vocal faction of the design community that wants to se filler text banished to the original sources for whencecame Perhaps not surprisingly, in an era of endless quibbling, there an equally vocal contingent of designers leaping end the use of the time-honored tradition of greeking.",
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.white, fontSize: 9,fontWeight: FontWeight.w500),
                      ),
                      10.heightBox,
                      Text(
                        "Historical, multi-level 1,000-seat theater featuring concerts, movies & other events.",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.white, fontSize: 10,fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                10.heightBox,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            // direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 15,
                            itemBuilder: (context, _) => Container(
                              child: Icon(
                                Icons.star,
                                size: 12,
                                color: Colors.amber,
                              ),
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          Text(
                            "(4.5)",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Text(
                        "158 Reviews",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                20.heightBox,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Address:",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                      30.widthBox,
                      Flexible(
                        child: Text(
                          "630 S Broadway, Los Angeles, CA 90014, USA",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 25)),
                    Text(
                      "Phone:",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                    40.widthBox,
                    Text(
                      "(+1) 505-343-7300",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                Divider(
                  height: 30,
                  color: Color.fromARGB(255, 58, 58, 58),
                ),
                20.heightBox,
                Container(
                  width: main_Width * 0.85,
                  height: 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      image: DecorationImage(
                          image: AssetImage(Birds), fit: BoxFit.fitWidth)),
                ),
                10.heightBox,
                Text(
                  "The Flying Birds",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                20.heightBox,
              ]),
            ),
          ),
        ],
      ),
    ));
  }
}
