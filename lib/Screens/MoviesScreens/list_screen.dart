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
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.of(context).pop();
          },icon: Icon(Icons.arrow_back_ios,size: 18,),),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0xff1f203c),
          title: Text("Movies List", style: TextStyle(color: Colors.white,fontSize: 20)),
          centerTitle: false,
          actions: [
            Container(
              width: main_Width * 0.12,
              margin: EdgeInsets.only(right: 15,top: 10),
              // child: Icon(Icons.search,color: Colors.white,),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 1),
                  colors: [
                    Color(0xFFFB6E37),
                    Color(0xFF7D37FB)
                  ],
                  tileMode: TileMode.mirror,
                ),
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: IconButton(onPressed: (){},
                        icon: Icon(Icons.search,color: Colors.white,size: 28,))
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Trending",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ).box.padding(EdgeInsets.only(top: 25, left: 20)).make(),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MoviePopular()));
                      },
                      child: Text(
                        "Popular",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ).box.padding(EdgeInsets.only(left: 20, top: 25)).make())
                ],
              ),
              20.heightBox,
              Column(
                children: [
                  LottieBuilder.network(
                    "https://lottie.host/68e357e5-632a-414c-9289-b916c93a66d2/9JrisN12kt.json",
                    height: main_Height * 0.30,
                    width: main_Width * 0.80,
                  )
                ],
              ).box.border(color: Colors.grey).rounded.make(),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          left: main_Width * 0.1, top: main_Height * 0.1)),
                  Text(
                    "IMBD",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                      .box
                      .rounded
                      .padding(EdgeInsets.all(6))
                      .border(color: Colors.white)
                      .make(),
                  Text("8.9",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold))
                      .box
                      .padding(EdgeInsets.only(left: main_Width * 0.04))
                      .make()
                ],
              ),
              Column(
                children: [
                  Text(
                    "Fast & Furious Hobbs & Shaw",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: main_Width * 0.05),
                  ).box.margin(EdgeInsets.only(right: main_Width * 0.1)).make(),
                  10.heightBox,
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Action, Crime, Thriller",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                      .box
                      .padding(EdgeInsets.only(left: main_Width * 0.12))
                      .make(),
                ],
              ),
              20.heightBox,
              Row(
                children: [
                  Image.asset(
                    strange,
                    height: main_Height * 0.25,
                    width: main_Width * 0.40,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "IMBD",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                              .box
                              .padding(EdgeInsets.all(6))
                              .margin(EdgeInsets.only(right: 15))
                              .rounded
                              .border(color: Colors.white)
                              .make(),
                          Text(
                            "8.9",
                            style: TextStyle(color: Colors.white),
                          ).box.margin(EdgeInsets.only(right: main_Width*0.2)).make()
                        ],
                      ),
                      10.heightBox,
                      Container(
                          // padding: EdgeInsets.only(right: 5),
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "How To Train Your Drag...",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ).box.margin(EdgeInsets.only(right: main_Width*0.02)).make(),
                          Text(
                            "Director: Dean DeBlois",
                            style: TextStyle(color: Colors.white),
                          ).box.padding(EdgeInsets.only(right: 30)).make(),
                          Text(
                            "Stars: Jay Baruchel, America",
                            style: TextStyle(color: Colors.white),
                          ).box.margin(EdgeInsets.only(left: 10)).make(),
                          Text(
                            "Ferrera, F. Murray Abraham",
                            style: TextStyle(color: Colors.white),
                          ).box.padding(EdgeInsets.only(left: 0)).make(),
                        ],
                      ))
                    ],
                  )
                ],
              ),
              Divider(
                height: main_Height * 0.03,
                color: Colors.grey,
              ),
              Row(
                children: [
                  Image.asset(
                    cartoon,
                    height: main_Height * 0.25,
                    width: main_Width * 0.40,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "IMBD",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                              .box
                              .padding(EdgeInsets.all(6))
                              .margin(EdgeInsets.only(right: 15))
                              .rounded
                              .border(color: Colors.white)
                              .make(),
                          Text(
                            "7.8",
                            style: TextStyle(color: Colors.white),
                          ).box.margin(EdgeInsets.only(right: main_Width*0.2)).make()
                        ],
                      ),
                      10.heightBox,
                      Container(
                          // padding: EdgeInsets.only(right: 5),
                          child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "The Kid Who Will B...",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ).box.padding(EdgeInsets.only(right: 37)).make(),
                          Text(
                            "Director: joe Cornish",
                            style: TextStyle(color: Colors.white),
                          ).box.padding(EdgeInsets.only(right: 40)).make(),
                          Text(
                            "Stars: Jay Baruchel, America",
                            style: TextStyle(color: Colors.white),
                          ).box.padding(EdgeInsets.only(left: 12)).make(),
                          Text(
                            "Ferrera, F. Murray",
                            style: TextStyle(color: Colors.white),
                          ).box.padding(EdgeInsets.only(right: 60)).make(),
                        ],
                      ))
                    ],
                  )
                ],
              ),
              Divider(
                height: main_Height * 0.03,
                color: Colors.grey,
              ),
              Row(
                children: [
                  Image.asset(
                    avenger,
                    height: main_Height * 0.25,
                    width: main_Width * 0.40,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "IMBD",
                            style: TextStyle(
                                color: Colors.white,
                                ),
                          )
                              .box
                              .padding(EdgeInsets.all(6))
                              .margin(EdgeInsets.only(right: 15))
                              .rounded
                              .border(color: Colors.white)
                              .make(),
                          Text(
                            "9.4",
                            style: TextStyle(color: Colors.white),
                          ).box.margin(EdgeInsets.only(right: main_Width*0.15)).make()
                        ],
                      ),
                      10.heightBox,
                      Container(
                          // padding: EdgeInsets.only(right: 5),
                          child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Avengers The Marvels...",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ).box.margin(EdgeInsets.only(right: 8)).make(),
                          Text(
                            "Director: joe Cornish",
                            style: TextStyle(color: Colors.white),
                          ).box.padding(EdgeInsets.only(right: 35)).make(),
                          Text(
                            "Stars: Jay Baruchel, America",
                            style: TextStyle(color: Colors.white),
                          ).box.margin(EdgeInsets.only(left: 20)).make(),
                          Text(
                            "Ferrera, F. Murray",
                            style: TextStyle(color: Colors.white),
                          ).box.padding(EdgeInsets.only(right: 50)).make(),
                        ],
                      ))
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// https://lottie.host/68e357e5-632a-414c-9289-b916c93a66d2/9JrisN12kt.json