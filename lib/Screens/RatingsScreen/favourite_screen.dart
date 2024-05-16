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
          child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xff2e3350),
            ),
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
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            size: 28,
                            color: Colors.white,
                          ))),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Column(
              children: [
                Column(children: [
                  Container(
                    color: Color(0xFF2e3350),
                    child: Padding(
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
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Stack(
                      children: [
                        Positioned(
                            child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFF2e3350),
                              borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(20))),
                          height: 165,
                        )),
                        Positioned(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 210,
                                        width: main_Width * 0.40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            image: DecorationImage(
                                                image: AssetImage(cartoon),
                                                fit: BoxFit.cover)),
                                      ),
                                      5.heightBox,
                                      Text(
                                        "copsc Bride The Enjoy",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text("Love, Comady, Emotions",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w300))
                                    ],
                                  ),
                                ),
                                20.widthBox,
                                Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 210,
                                        width: main_Width * 0.40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            image: DecorationImage(
                                                image: AssetImage(Marvel),
                                                fit: BoxFit.cover)),
                                      ),
                                      5.heightBox,
                                      Text(
                                        "Captain America The Times",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text("Action, Thriller, Scientific",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w300))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  20.heightBox
                ]),
                20.heightBox,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              height: 210,
                              width: main_Width * 0.40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                      image: AssetImage(Birds),
                                      fit: BoxFit.cover)),
                            ),
                            5.heightBox,
                            Text(
                              "The Blue Birds",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text("Love, Comady, Emotions",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300))
                          ],
                        ),
                      ),
                      20.widthBox,
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              height: 210,
                              width: main_Width * 0.40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                      image: AssetImage(Jungle),
                                      fit: BoxFit.cover)),
                            ),
                            5.heightBox,
                            Text(
                              "The Jungle Tour",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text("Action, Thriller, Scientific",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                10.heightBox,
                Divider(
                  height: 25,
                  color: Color.fromARGB(255, 79, 79, 79),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Animation",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "VIEW ALL",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
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
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              height: 210,
                              width: main_Width * 0.40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                      image: AssetImage(avenger),
                                      fit: BoxFit.cover)),
                            ),
                            Text(
                              "The Avengers",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                            5.heightBox,
                            Text("Action, Thriller, Scientific",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300))
                          ],
                        ),
                      ),
                      20.widthBox,
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              height: 210,
                              width: main_Width * 0.40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                      image: AssetImage(strange),
                                      fit: BoxFit.cover)),
                            ),
                            5.heightBox,
                            Text(
                              "Dr. Strange",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text("Action, Thriller, Scientific",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300))
                          ],
                        ),
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
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              height: 210,
                              width: main_Width * 0.40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                      image: AssetImage(Marvel),
                                      fit: BoxFit.cover)),
                            ),
                            5.heightBox,
                            Text(
                              "Captain America",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text("Action, Thriller, Scientific",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300))
                          ],
                        ),
                      ),
                      20.widthBox,
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              height: 210,
                              width: main_Width * 0.40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                      image: AssetImage(Jungle),
                                      fit: BoxFit.cover)),
                            ),
                            5.heightBox,
                            Text(
                              "The Jungle Tour",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text("Action, Thriller, Scientific",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                20.heightBox,
              ],
            )),
          ),
        ],
      )),
    );
  }
}
