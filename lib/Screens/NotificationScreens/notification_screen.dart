import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vanshtask1/Screens/HelperScreen/images.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: (Color(0xff2e3350)),
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            // Navigator.of(context).pop();
          },icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 18,),),
          backgroundColor:(Color(0xff2e3350)),
          actions: [ Container(
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
          )],
          title: Text(
            "Notification",
            style:
                TextStyle(color: Colors.white,fontSize: 18),
          ),
        ),
        body: SingleChildScrollView(
                child: Column(
        children: [
          20.heightBox,
          Text("Today Release Movies",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),).box.padding(EdgeInsets.only(right: main_Width*0.5)).make(),
          15.heightBox,
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(90),
                child: Image.asset(
                  strange,
                  height: main_Height * 0.25,
                  width: main_Width * 0.4,
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "IMBD",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                          .box
                          .padding(EdgeInsets.all(10))
                          .margin(EdgeInsets.only(right: 10))
                          .rounded
                          .border(color: Colors.white)
                          .make(),
                      Text(
                        "8.9",
                        style: TextStyle(color: Colors.white),
                      ).box.margin(EdgeInsets.only(right: 80)).make()
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
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ).box.margin(EdgeInsets.only(right: 10)).make(),
                      Text(
                        "Director: Dean DeBlois",
                        style: TextStyle(color: Colors.white),
                      ).box.padding(EdgeInsets.only(right: 30)).make(),
                      Text(
                        "Stars: Jay Baruchel, America",
                        style: TextStyle(color: Colors.white),
                      ).box.padding(EdgeInsets.only(left: 10)).make(),
                      Text(
                        "Ferrera, F. Murray Abraham",
                        style: TextStyle(color: Colors.white),
                      ),
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
              ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image.asset(
                  cartoon,
                  height: main_Height * 0.25,
                  width: main_Width * 0.40,
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "IMBD",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                          .box
                          .padding(EdgeInsets.all(10))
                          .margin(EdgeInsets.only(right: 10))
                          .rounded
                          .border(color: Colors.white)
                          .make(),
                      Text(
                        "7.8",
                        style: TextStyle(color: Colors.white),
                      ).box.margin(EdgeInsets.only(right: 80)).make()
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
                            color: Colors.white, fontWeight: FontWeight.bold),
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
            // height: main_Height * 0.03,
            color: Color(0xff1f203c),
          ),
          Text(
            "Register your Ticket for Upcoming Movie",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ).box.padding(EdgeInsets.only(right: main_Width*0.15)).make(),
          15.heightBox,
          Column(children:[
          Align(child: 
          Row(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                avenger,
                height: main_Height * 0.25,
                width: main_Width * 0.40,
              ),
            ),
            Column(children: [
              Row(
                children: [
                  Text(
                    "IMBD",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                      .box
                      .padding(EdgeInsets.all(10))
                      .margin(EdgeInsets.only(right: 10))
                      .rounded
                      .border(color: Colors.white)
                      .make(),
                  Text(
                    "9.4",
                    style: TextStyle(color: Colors.white),
                  ).box.margin(EdgeInsets.only(right: 80)).make()
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
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ).box.padding(EdgeInsets.only(right: 2)).make(),
                  Text(
                    "Director: joe Cornish",
                    style: TextStyle(color: Colors.white),
                  ).box.padding(EdgeInsets.only(right: 30)).make(),
                  Text(
                    "Stars: Jay Baruchel, America",
                    style: TextStyle(color: Colors.white),
                  ).box.padding(EdgeInsets.only(left: 25)).make(),
                  Text(
                    "Ferrera, F. Murray",
                    style: TextStyle(color: Colors.white),
                  ).box.padding(EdgeInsets.only(right: 45)).make(),
                ],
              ))
            ])
          ])
          ).box.padding(EdgeInsets.all(5)).color(Color(0xff1f203c),).make(),
          Divider(),
          Align(child: 
          Row(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Image.asset(
                Jungle,
                height: main_Height * 0.25,
                width: main_Width * 0.40,
              ),
            ),
            Column(children: [
              Row(
                children: [
                  Text(
                    "IMBD",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                      .box
                      .padding(EdgeInsets.all(10))
                      .margin(EdgeInsets.only(right: 15))
                      .rounded
                      .border(color: Colors.white)
                      .make(),
                  Text(
                    "8.9",
                    style: TextStyle(color: Colors.white),
                  ).box.margin(EdgeInsets.only(right: 50)).make()
                ],
              ),
              10.heightBox,
              Container(
                  // padding: EdgeInsets.only(right: 5),
                  child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "The Craods...",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ).box.padding(EdgeInsets.only(right:main_Width*0.18)).make(),
                  Text(
                    "Director: joe Cornish",
                    style: TextStyle(color: Colors.white),
                  ).box.padding(EdgeInsets.only(right: 25)).make(),
                  Text(
                    "Stars: Jay Baruchel, America",
                    style: TextStyle(color: Colors.white),
                  ).box.padding(EdgeInsets.only(left: 30)).make(),
                  Text(
                    "Ferrera, F. Murray",
                    style: TextStyle(color: Colors.white),
                  ).box.padding(EdgeInsets.only(right: 40)).make(),
                ],
              ))
            ])
          ])
          ).box.padding(EdgeInsets.all(5)).color(Color(0xff1f203c)).make()
        ]).box.color(Color(0xff1f203c),
                ).make()
        ],
                ),
              ),
      ),
    );
  }
}
