import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MoviePopular extends StatefulWidget {
  const MoviePopular({super.key});

  @override
  State<MoviePopular> createState() => _MoviePopularState();
}

class _MoviePopularState extends State<MoviePopular> {
  @override
  Widget build(BuildContext context) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Expanded(
        flex: 1,
        child: Scaffold(
            backgroundColor: Color(0xff1f203c),
            body: SingleChildScrollView(
              child: Column(
                children: [
                   Container(
                    width: main_Width,
                    height: main_Height * 0.50,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.white,)).box.margin(EdgeInsets.only(top: 15,left: 10)).make(),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "IMBD",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: main_Width * 0.033),
                                ).box.margin(EdgeInsets.only(left: main_Width*0.10)).rounded.padding(EdgeInsets.all(3)).border(color: Colors.white).make(),
                                10.widthBox,
                                Text("8.9/10",style: TextStyle(color: Colors.white,fontSize: main_Width*0.03,fontWeight: FontWeight.bold),)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Pokemon Detective Pikachu",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: main_Width * 0.05),
                                ).box.margin(EdgeInsets.only(left: 40)).make(),
                                Icon(Icons.play_circle,color: Colors.white,size: 50,).box.margin(EdgeInsets.only(right: 30)).make(),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Adventure,Family,Fantasy",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: main_Width * 0.03),
                                )
                              ],
                            ).box.margin(EdgeInsets.only(left: main_Width*0.11)).make(),
                            20.heightBox,
                          ],
                        )
                      ],
                    ),
                  ),
                  10.heightBox,
                  // 20.widthBox,
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "01h 44min",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: main_Width * 0.05),
                      ).box.padding(EdgeInsets.only(left: 20)).make(),
                      55.widthBox,
                      Text(
                        "86%",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: main_Width * 0.05),
                      ),
                      80.widthBox,
                      Text(
                        "71%",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: main_Width * 0.05),
                      )
                    ],
                  ),
                  // 5.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Duration",
                        style: TextStyle(
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                            fontSize: main_Width * 0.03),
                      ),
                      // 1.widthBox,
                      Text(
                        "Rotten Tomatos",
                        style: TextStyle(
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                            fontSize: main_Width * 0.03),
                      ).box.padding(EdgeInsets.only(left: 15)).make(),
                      // 10.widthBox,
                      Text(
                        "Metacritics",
                        style: TextStyle(
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                            fontSize: main_Width * 0.03),
                      )
                    ],
                  ),
                  20.heightBox,
                  Row(
                    children: [
                      Text(
                        "Release Date:",
                        style: TextStyle(color: Colors.white),
                      ).box.margin(EdgeInsets.only(left: 20)).make(),
                      10.widthBox,
                      Text(
                        "July 10,2019",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  20.heightBox,
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Director:",
                            style: TextStyle(color: Colors.white),
                          ).box.margin(EdgeInsets.only(left: 20)).make(),
                          45.widthBox,
                          Text(
                            "Rob Latterman",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Writers:",
                                style: TextStyle(color: Colors.white),
                              ).box.margin(EdgeInsets.only(left: 20)).make(),
                              50.widthBox,
                              Column(
                                children: [
                                  Text(
                                    "Dan Hernandez, Benji",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Rob Letterman &",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Derek Connolly",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ).box.margin(EdgeInsets.only(top: 40)).make(),
                              10.widthBox,
                              // 50.heightBox,
                              Container(
                                width: main_Width * 0.25,
                                height: main_Height * 0.10,
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
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 15)),
                                    Icon(
                                      Icons.play_circle_fill,
                                      color: Colors.white,
                                      size: main_Width * 0.1 ,
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
                          10.heightBox,
                          Column(
                            children: [
                              Text(
                                "Synopsis",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ).box.margin(EdgeInsets.only(right: 300)).make(),
                              5.heightBox,
                              Text(
                                "Use filler text that has been edited for length and format to match the characteristics of real content as closely as possible Relax and do whatever fits with your design process design is an evolutionary process, and filler text is just one tool in your progress-pushing arsenal. Use it where it makes sense to use it, and pull it once the natural process.",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ).box.margin(EdgeInsets.all(12)).make()
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
