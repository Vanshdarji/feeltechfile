import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:vanshtask1/Screens/HelperScreen/images.dart';
import 'package:vanshtask1/Screens/MoviesScreens/popular_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class MoviesList extends StatefulWidget {
  const MoviesList({super.key});

  @override
  State<MoviesList> createState() => _MoviesListState();
}

class _MoviesListState extends State<MoviesList> {
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
              child: Padding(
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
                          "Movies",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding:EdgeInsets.all(10),
                      margin: EdgeInsets.only(right: 15, top: 5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(0.8, 1),
                          colors: [Color(0xFFFB6E37), Color(0xFF7D37FB)],
                          tileMode: TileMode.mirror,
                        ),
                      ),
                      child: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                  size: 28
                    ),)
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Row(
                    //   children: [
                    //     Padding(padding: EdgeInsets.only(left: 40, top: 20)),
                    //     Text(
                    //       "Trending",
                    //       overflow: TextOverflow.ellipsis,
                    //       style: TextStyle(
                    //           color: Colors.white,
                    //           fontWeight: FontWeight.bold,
                    //           fontSize: 20),
                    //     ),
                    //     20.widthBox,
                    //     InkWell(
                    //       onTap: () {
                    //         Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //                 builder: (context) => MoviePopular()));
                    //       },
                    //       child: Text(
                    //         "Popular",
                    //         overflow: TextOverflow.ellipsis,
                    //         style: TextStyle(color: Colors.white, fontSize: 14,fontWeight: FontWeight.w400),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    20.heightBox,
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: LottieBuilder.network(
                        "https://lottie.host/68e357e5-632a-414c-9289-b916c93a66d2/9JrisN12kt.json",
                        height: 210,
                        width: 320,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 10),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              border: Border.all(color: Colors.white),
                            ),
                            child: Text(
                              "IMBD",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          10.widthBox,
                          Text("8.9",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white,fontSize: 13, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    10.heightBox,
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Fast & Furious Hobbs & Shaw',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 19),
                          ),
                          5.heightBox,
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Action, Crime, Thriller',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    20.heightBox,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 180,
                            width: 140,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(strange), fit: BoxFit.cover)),
                          ),
                          20.widthBox,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 90),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.all(Radius.circular(8)),
                                          border: Border.all(color: Colors.white),
                                        ),
                                        child: Text(
                                          "IMBD",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      10.widthBox,
                                      Text(
                                        "8.9",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                                10.heightBox,
                                Text(
                                  'The Dr. Strange Marvels Time',
                                  maxLines: 1,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Director: Dean Delois",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 13,fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Stars: Jay Baruchel, America",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 13,fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Ferrera, F. Murray Abraham",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 13,fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Divider(
                        height: 25,
                        color: Color.fromARGB(255, 79, 79, 79),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 180,
                            width: 140,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(cartoon), fit: BoxFit.cover)),
                          ),
                          20.widthBox,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 90),
                                  child: Row(
                                    
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.all(Radius.circular(8)),
                                          border: Border.all(color: Colors.white),
                                        ),
                                        child: Text(
                                          "IMBD",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      10.widthBox,
                                      Text(
                                        "7.8",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                                10.heightBox,
                                Text(
                                  "The Corpsc Bride The Unconditional",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Director: joe Cornish",
                                  maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 13,fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Stars: Jay Baruchel, America",
                                  maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 13,fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Ferrera, F. Murray Abraham",
                                  maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 13,fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Divider(
                        height: 25,
                        color: Color.fromARGB(255, 79, 79, 79),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 180,
                            width:140,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(avenger), fit: BoxFit.cover)),
                          ),
                          20.widthBox,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 90),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.all(Radius.circular(8)),
                                          border: Border.all(color: Colors.white),
                                        ),
                                        child: Text(
                                          "IMBD",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      10.widthBox,
                                      Text(
                                        "8.9",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                                10.heightBox,
                                Text(
                                  "The Avengers Marvels Endgame",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Director: M. Night Shayamlan",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 13),
                                ),
                                Text(
                                  "Stars: Jay Baruchel, America",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 13),
                                ),
                                Text(
                                  "Ferrera, F. Murray Abraham",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      TextStyle(color: Colors.white,fontWeight: FontWeight.w500, fontSize: 13),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Divider(
                        height: 25,
                        color: Color.fromARGB(255, 79, 79, 79),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}