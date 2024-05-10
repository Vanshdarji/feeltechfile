import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vanshtask1/Screens/HelperScreen/images.dart';
import 'package:vanshtask1/Screens/TheatersScreens/place_info_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class TheaterPlace extends StatefulWidget {
  const TheaterPlace({super.key});

  @override
  State<TheaterPlace> createState() => _TheaterPlaceState();
}

class _TheaterPlaceState extends State<TheaterPlace> {
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
    return Scaffold(
      backgroundColor: Color(0xff1f203c),
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        },icon: Icon(Icons.arrow_back_ios,size: 18,),),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: (Color(0xff2e3350)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Palace Theaters",
              style:
                  TextStyle(color: Colors.white,fontSize: 20),
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
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MovieTheaterInfo()));
              },
              child: SingleChildScrollView(
                child: Container(
                  height: main_Height * 0.42,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            width: main_Width * 0.80,
                            height: main_Height * 0.30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage(Birds),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            "Palace Albany Theater",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: main_Width * 0.04),
                          )
                              .box
                              .padding(EdgeInsets.only(right: main_Width * 0.3))
                              .make(),
                          Row(
                            children: [
                              Text(
                                "3D Digital Media & Ultra HD",
                                style: TextStyle(color: Colors.white),
                              )
                                  .box
                                  .padding(EdgeInsets.only(right: main_Width * 0.07))
                                  .make(),
                              40.widthBox,
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: main_Width * 0.03,
                                  ),
                                  Text(
                                    "4.8",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ).box.roundedSM.border(color: Colors.white).make()
                            ],
                          )
                        ],
                      );
                    },
                  )
                      .box
                      .padding(EdgeInsets.only(left: main_Width * 0.1))
                      .color(Color(0xff2e3350))
                      .bottomRounded()
                      .make(),
                ),
              ),
            ),
            20.heightBox,
            Divider(
              color: (Color.fromARGB(255, 56, 59, 137)),
            ),
            10.heightBox,
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: main_Width*0.04)),
                Text("Related Theaters",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: main_Width*0.05),)
              ],
            ),
            10.heightBox,
            Container(
                height: main_Height * 0.43,
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
                            height: main_Height * 0.28,
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
                                fontSize: main_Width * 0.04),
                          )
                              .box
                              .padding(EdgeInsets.only(left: main_Width * 0.05))
                              .make(),
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
                                    size: main_Width * 0.03,
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
      ),
    );
  }
}
