import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vanshtask1/Screens/HelperScreen/images.dart';
import 'package:velocity_x/velocity_x.dart';

class MoviesFavorite extends StatefulWidget {
  const MoviesFavorite({super.key});

  @override
  State<MoviesFavorite> createState() => _MoviesFavoriteState();
}

class _MoviesFavoriteState extends State<MoviesFavorite> {
  @override
  Widget build(BuildContext context) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff1f203c),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: [
          Column(
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
                          "Favourite",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: main_Width * 0.12,
                      margin: EdgeInsets.only(right: 15, top: 5),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(0.8, 1),
                          colors: [Color(0xFFFB6E37), Color(0xFF7D37FB)],
                          tileMode: TileMode.mirror,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                  size: 28,
                                ))),
                      ),
                    ),
                  ],
                ),
              ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Action",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "VIEW ALL",
                      style: TextStyle(
                          color: Colors.white, fontSize: main_Width * 0.03),
                    ))
              ],
            ),
          ),
          10.heightBox,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: main_Height * 0.25,
                      width: main_Width * 0.40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage(cartoon), fit: BoxFit.cover)),
                    ),
                    Text(
                      "copsc Bride",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    Text("Love, Comady, Emotions",style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w300))
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: main_Height * 0.25,
                      width: main_Width * 0.40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage(Marvel), fit: BoxFit.cover)),
                    ),
                    Text(
                      "Captain America",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    Text("Action, Thriller, Scientific",style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w300))
                  ],
                ),
              ],
            ),
          ),
          20.heightBox
          ]).box.color(Color(0xff2e3350)).bottomRounded().make(),
          20.heightBox,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: main_Height * 0.25,
                      width: main_Width * 0.40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage(Birds), fit: BoxFit.cover)),
                    ),
                    Text(
                      "The Blue Birds",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    Text("Love, Comady, Emotions",style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w300))
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: main_Height * 0.25,
                      width: main_Width * 0.40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage(Jungle), fit: BoxFit.cover)),
                    ),
                    Text(
                      "The Jungle Tour",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    Text("Action, Thriller, Scientific",style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w300))
                  ],
                ),
              ],
            ),
          ),
          10.heightBox,
          Divider(
                  height: main_Height * 0.03,
                  color: Color.fromARGB(255, 79, 79, 79),
                ),
                Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Animation",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "VIEW ALL",
                      style: TextStyle(
                          color: Colors.white, fontSize: main_Width * 0.03),
                    ))
              ],
            ),
          ),
          10.heightBox,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: main_Height * 0.25,
                      width: main_Width * 0.40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage(avenger), fit: BoxFit.cover)),
                    ),
                    Text(
                      "The Avengers",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    Text("Action, Thriller, Scientific",style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w300))
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: main_Height * 0.25,
                      width: main_Width * 0.40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage(strange), fit: BoxFit.cover)),
                    ),
                    Text(
                      "Dr. Strange",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    Text("Action, Thriller, Scientific",style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w300))
                  ],
                ),
              ],
            ),
          ),
          20.heightBox,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: main_Height * 0.25,
                      width: main_Width * 0.40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage(Marvel), fit: BoxFit.cover)),
                    ),
                    Text(
                      "Captain America",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    Text("Action, Thriller, Scientific",style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w300))
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: main_Height * 0.25,
                      width: main_Width * 0.40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage(Jungle), fit: BoxFit.cover)),
                    ),
                    Text(
                      "The Jungle Tour",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    Text("Action, Thriller, Scientific",style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w300))
                  ],
                ),
              ],
            ),
          ),
          20.heightBox,
        ],
      ))),
    );
  }
}
