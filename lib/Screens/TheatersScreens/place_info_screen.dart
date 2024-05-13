import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:vanshtask1/Screens/HelperScreen/images.dart';
import 'package:vanshtask1/Screens/TheatersScreens/review_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class MovieTheaterInfo extends StatefulWidget {
  const MovieTheaterInfo({super.key});

  @override
  State<MovieTheaterInfo> createState() => _MovieTheaterInfoState();
}

class _MovieTheaterInfoState extends State<MovieTheaterInfo> {
  @override
  Widget build(BuildContext context) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xff1f203c),
      body: Container(
        child: SingleChildScrollView(
          child: Expanded(child: Column(
            children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ReviewScreen()));
              },
              child: Container(
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
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 40),
                        width: main_Width*0.16,
                        child: Row(
                          children: [
                            Text(
                              "4.5",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            10.widthBox,
                            Icon(Icons.star,color: Colors.white,size: 16,),
                          ],
                        ).box
                            .padding(EdgeInsets.all(3))
                            .roundedSM
                            .border(color: Colors.white)
                            .make(),
                      ),
                      10.heightBox,
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 40)),
                          Text(
                            "Palace Albany Theater",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize:18),
                          ),
                        ],
                      ),
                      5.heightBox,
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 40)),
                          Text(
                            "3D, Digital Media & Ultra HD",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12),
                          )
                        ],
                      ),
                      20.heightBox,
                    ],
                  )
                  ],
                ),
              ),
            ),
            10.heightBox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Text("Surprisingly, there is a very vocal faction of the design community that wants to se filler text banished to the original sources for whencecame Perhaps not surprisingly, in an era of endless quibbling, there an equally vocal contingent of designers leaping end the use of the time-honored tradition of greeking.",
                  textAlign: TextAlign.left,style: TextStyle(color: Colors.white,fontSize: 9),),
                  10.heightBox,
                  Text("Historical, multi-level 1,000-seat theater featuring concerts, movies & other events.",
                  textAlign: TextAlign.left, style: TextStyle(color: Colors.white,fontSize: 10),),
                ],
              ),
            ),
              10.heightBox,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                      RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      // direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 15,
                      itemBuilder: (context, _) => Container(
                        child: Icon(
                          Icons.star,
                          size: 12,
                          color: Colors.amber,
                        ),
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                      ),
                        Text("(4.5)",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w500),)
                      ],
                    ),
                    Text("158 Reviews",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w500),)
                    
                  ],
                ),
              ),
              20.heightBox,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Address:",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    Text("630 S Broadway, Los Angeles, CA 90014, USA",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),)
                  ],
                ),
              ),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(left: 25)),
                  Text("Phone:",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                  40.widthBox,
                  Text("(+1) 505-343-7300",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),)
                ],
              ),
              Divider(
                height: 30,
                color: Color.fromARGB(255, 58, 58, 58),
              ),
              20.heightBox,
              Container(
                width: main_Width*0.85,
                height: main_Height*0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(image: AssetImage(Birds),fit: BoxFit.cover)
                ),
              ),
              10.heightBox,
              Text("The Flying Birds",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
              20.heightBox,
            ]
          )),
        ),
      ),
    ));
  }
}
