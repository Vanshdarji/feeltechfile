import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vanshtask1/Screens/HelperScreen/images.dart';
import 'package:vanshtask1/Screens/HelperScreen/list.dart';
import 'package:vanshtask1/Screens/RatingsScreen/favourite_screen.dart';
import 'package:vanshtask1/Screens/MoviesScreens/list_screen.dart';
import 'package:vanshtask1/Screens/MoviesScreens/movie_search.dart';
import 'package:velocity_x/velocity_x.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  int _currentIndex = 0;
  final List<Map<String, dynamic>> data = [
    {'name': 'Avengers Endgame','Subtitle':'Action, Thriller, Scientific', 'image': avenger},
    {'name': 'The Corpsc Bride','Subtitle':'Action, Comady, fun', 'image': cartoon},
    {'name': 'Dr. Strange', 'Subtitle':'Action, Thriller, Suspense','image': strange},
  ];
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
        backgroundColor: Color(0xff1f203c),
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.of(context).pop();
          },icon: Icon(Icons.arrow_back_ios,size: 18,),),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0xff1f203c),
          actions: [
            SingleChildScrollView(
              child: Container(
                // height: 400,
                width: main_Width * 0.12,
                margin: EdgeInsets.only(right: 15,top:5),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MovieSearch()));
                      }, icon: Icon(Icons.search,color: Colors.white,size: 28,))
                  ),
                ),
              ),
            )
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Movies",
                style:
                TextStyle(color: Colors.white,fontSize: 20),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              10.heightBox,
              Row(
                children: [
                  50.widthBox,
                  Text("Trending",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
                  10.widthBox,
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MoviesList()));
                  }, child: Text("Popular",style: TextStyle(color: Colors.white),)),
                ],
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: VxSwiper.builder(
                  itemCount:data.length,
                  height: main_Height*0.65,
                  aspectRatio: 12/6,
                  viewportFraction: 0.7,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  // autoPlay: true,
                  // autoPlayInterval: Duration(seconds: 3),
                  // autoPlayAnimationDuration: Duration(milliseconds: 800),
                  // autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  onPageChanged: (index) {
                   setState(() {
                     _currentIndex = index;
                     });
                   },
                  isFastScrollingEnabled: false,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return _buildCarouselItem(data[index]);
                  },
                ).box
                    .rounded
                    .clip(Clip.antiAlias)
                    .margin(EdgeInsets.symmetric(horizontal: 16))
                    .make(),
              ),
              _buildDotsIndicator(),
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
            ],
          ),
        ),
      )
    );
  }
  Widget _buildCarouselItem(Map<String, dynamic> item) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // 10.heightBox,
          Image.asset(
            item['image'],
            height: main_Height*0.42,// Adjust the width as needed, // Adjust the height as needed
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("IMBD",style: TextStyle(color: Colors.white,fontSize: main_Width*0.03),).box.padding(EdgeInsets.all(2)).roundedSM.border(color: Colors.white).make(),
              10.widthBox,
              Text("8.9",style: TextStyle(color: Colors.white,fontSize: main_Width*0.03),),
            ],
          ),
          Row(
            children: [
              Column(
                  children: [
              Text(
                item['name'],
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              )
              ]),
            ],
          ),
          // 5.heightBox,
          Row(
            children: [
              Column(
                  children: [
              Text(item['Subtitle'],style: TextStyle(color: Colors.white,fontSize: main_Width*0.03),)]),
            ],
          )
        ],
      ),
    );
  }
  Widget _buildDotsIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: data.map((item) {
        int index = data.indexOf(item);
        return Container(
          width: 8.0,
          height: 8.0,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentIndex == index ? Colors.blueAccent : Colors.grey,
          ),
        );
      }).toList(),
    );
  }
}

