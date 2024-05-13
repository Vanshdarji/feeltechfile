import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vanshtask1/Screens/HelperScreen/images.dart';
import 'package:velocity_x/velocity_x.dart';

class MoviePopular extends StatefulWidget {
  const MoviePopular({super.key});

  @override
  State<MoviePopular> createState() => _MoviePopularState();
}

class _MoviePopularState extends State<MoviePopular> {
final List<String> images = [Jungle, avenger, Birds];
  final List<String> names = [
    'TCL Chinese Theater',
    'Dolby Theaterss',
    'Inox Theaterss',
  ];
  final List<String> rating = [
    'Rating',
    'Rating',
    'Rating',
  ];

  @override
  Widget build(BuildContext context) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Expanded(
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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "IMBD",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ).box.roundedSM.padding(EdgeInsets.all(3)).border(color: Colors.white).make(),
                                  10.widthBox,
                                  Text("8.9/10",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),)
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
                                        fontSize: 18),
                                  ),
                                  Icon(Icons.play_circle,color: Colors.white,size: 50,),
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
                              ),
                              20.heightBox,
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  10.heightBox,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "01h 44min",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Text("Duration",style: TextStyle(color: Colors.white,fontSize: 12),)
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "86%",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Text("Rotten Tomatos",style: TextStyle(color: Colors.white,fontSize: 12),)
                          ],
                        ),
                        
                        Column(
                          children: [
                            Text(
                              "71%",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize:16),
                            ),
                            Text("Metacritics",style: TextStyle(color: Colors.white,fontSize: 12),)
                          ],
                        ),
                      ],
                    ),
                  ),
                  20.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 25)),
                      Text(
                        "Release Date:",
                        style: TextStyle(color: Colors.white,fontSize: 14),
                      ),
                      10.widthBox,
                      Text(
                        "July 10,2019",
                        style: TextStyle(
                            color: Colors.white,fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  20.heightBox,
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(left: 25)),
                          Text(
                            "Director:",
                            style: TextStyle(color: Colors.white,fontSize: 14),
                          ),
                          45.widthBox,
                          Text(
                            "Rob Latterman",
                            style: TextStyle(
                                color: Colors.white,fontSize: 12, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      10.heightBox,
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Writers:",
                                  style: TextStyle(color: Colors.white,fontSize: 14),
                                ),
                                40.widthBox,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Dan Hernandez, Benji",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Rob Letterman &",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Derek Connolly",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                10.widthBox,
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
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.play_circle_outline_outlined,
                                        color: Colors.white,
                                        size:30 ,
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
                          ),
                          10.heightBox,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Synopsis",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                5.heightBox,
                                Text(
                                  "Use filler text that has been edited for length and format to match the characteristics of real content as closely as possible Relax and do whatever fits with your design process design is an evolutionary process, and filler text is just one tool in your progress-pushing arsenal. Use it where it makes sense to use it, and pull it once the natural process.",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(color: Colors.white,fontSize: 10),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  20.heightBox,
                  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(left: 25)),
                  Text(
                    "Video Stims",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              10.heightBox,
                  Container(
                padding: EdgeInsets.only(left: 10),
                height: main_Height * 0.30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: main_Width * 0.45,
                            height: main_Height * 0.20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(images[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            names[index],
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          5.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                rating[index],
                                style: TextStyle(color: Colors.white),
                              ),
                              10.widthBox,
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 10,
                                  ),
                                  Text(
                                    "4.3",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ).box.roundedSM.border(color: Colors.white).make()
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
                ],
              ),
            )),
      ),
    );
  }
}
