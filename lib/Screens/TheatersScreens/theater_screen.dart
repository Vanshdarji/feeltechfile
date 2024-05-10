import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vanshtask1/Screens/HelperScreen/images.dart';
import 'package:vanshtask1/Screens/TheatersScreens/search_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class Theater extends StatefulWidget {
  const Theater({super.key});

  @override
  State<Theater> createState() => _TheaterState();
}

class _TheaterState extends State<Theater> {
  final List<String> images = [Jungle, avenger, Birds];

  final List<String> names = [
    'TCL Chinese Theater',
    'Dolby Theaterss',
    'Inox Theaterss',
    // Add corresponding names for the images here
  ];
  final List<String> rating = [
    'Rating',
    'Rating',
    'Rating',
    // Add corresponding names for the images here
  ];
  @override
  Widget build(BuildContext context) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.of(context).pop();
          },icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 18,),),
          backgroundColor: (Color(0xff2e3350)),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Theaters",
                style:
                    TextStyle(color: Colors.white,fontSize: 18),
              ),
            ],
          ),
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
                prefixIcon: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TheaterSearch()));
                }, icon: Icon(Icons.search,color: Colors.white,size: 28,))
              ),
            ),
          )
          ],
        ),
        backgroundColor: Color(0xff1f203c),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Near By",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    TextButton(
                        onPressed: () {

                        },
                        child: Text(
                          "VIEW ALL",
                          style: TextStyle(
                              color: Colors.white, fontSize: 12),
                        ))
                  ],
                )
                    .box
                    .color((Color(0xff2e3350)))
                    .padding(EdgeInsets.only(left: main_Width * 0.1))
                    .make(),
                Container(
                  height: main_Height * 0.35,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: main_Width * 0.70,
                              height: main_Height * 0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
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
                                  fontSize:16),
                            )
                                .box
                                .padding(EdgeInsets.only(right: main_Width * 0.2))
                                .make(),
                            Row(
                              children: [
                                Text(
                                  names[index],
                                  style: TextStyle(color: Colors.white),
                                )
                                    .box
                                    .padding(
                                        EdgeInsets.only(right: main_Width * 0.05))
                                    .make(),
                                40.widthBox,
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 12,
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
                  )
                      .box
                      .padding(EdgeInsets.only(left: main_Width * 0.04))
                      .color(Color(0xff2e3350))
                      .bottomRounded()
                      .make(),
                ),
                20.heightBox,
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.circle_rounded,
                          color: Colors.amber,
                          size:15,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.circle_outlined,
                          color: Colors.white,
                          size: 10,
                        ).box.margin(EdgeInsets.only(right: 25)).make(),
                        Icon(
                          Icons.circle_outlined,
                          color: Colors.white,
                          size: 10,
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "A/C Theater",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ).box.padding(EdgeInsets.only(left: main_Width * 0.06)).make(),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "VIEW ALL",
                          style: TextStyle(color: Colors.white,fontSize:12),
                        ))
                  ],
                ),
                Container(
                  height: main_Height * 0.30,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: main_Width * 0.40,
                              height: main_Height * 0.20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
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
                            Row(
                              children: [
                                Text(
                                  rating[index],
                                  style: TextStyle(color: Colors.white),
                                )
                                    .box
                                    .padding(
                                        EdgeInsets.only(right: main_Width * 0.06))
                                    .make(),
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
                Column(
                  children: [
                    Container(
                      height: main_Height * 0.30,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: images.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: main_Width * 0.40,
                                  height: main_Height * 0.20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
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
                                )
                                    .box
                                    .make(),
                                Row(
                                  children: [
                                    Text(
                                      rating[index],
                                      style: TextStyle(color: Colors.white),
                                    )
                                        .box
                                        .padding(EdgeInsets.only(
                                            right: main_Width * 0.06))
                                        .make(),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 12,
                                        ),
                                        Text(
                                          "4.3",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                        .box
                                        .roundedSM
                                        .border(color: Colors.white)
                                        .make()
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
              ],
            ),
          ),
        )),
    );
  }
}
