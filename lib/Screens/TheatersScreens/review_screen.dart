import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:vanshtask1/Screens/TheatersScreens/write_review_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
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
          },icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 18,),),
          backgroundColor: (Color(0xFF2e3350)),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Reviews",
                style:
                TextStyle(color: Colors.white,fontSize: 20),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("All Reviews",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>WriteReviewScreen()));
                          },
                          child: Row(
                            children: [
                              Text("Write a Review",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                              10.widthBox,
                              Icon(Icons.arrow_forward_ios,size: 12,color: Colors.white,)
                            ],
                          ),
                        )
                      ],
                    ).box.padding(EdgeInsets.symmetric(horizontal: 25)).make(),
                    20.heightBox,
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Column(
                              children: [
                                Text("4.5",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w500),),
                                Text("Out of 05",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),)
                              ],
                            ),
                            Column(
                              children: [
                                20.heightBox,
                                Row(
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 4.5,
                                      minRating: 1,
                                      // direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 10,
                                      itemBuilder: (context, _) => Container(
                                        // width: main_Width*0.70,
                                        child: Icon(
                                          Icons.star,
                                          color: Color(0xFFb8bec7),
                                        ),
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    15.heightBox,
                                    Container(
                                      height:main_Height*0.012 ,
                                      width: main_Width*0.4,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF525770),
                                            border: Border.all(color: Color(0xFF525770)),
                                            borderRadius: const BorderRadius.all(
                                              Radius.circular(16),
                                            ),
                                          ),child: Center(
                                            child: Container(
                                              decoration:  BoxDecoration(
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(100)),
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.topRight,
                                              colors: [
                                                Color(0xFFFB6E37),
                                                Color(0xFF7D37FB)
                                              ],
                                              tileMode: TileMode.mirror,
                                            ),
                                                                              ),),
                                          ).box.padding(EdgeInsets.only(right: main_Width*0.05)).make()
                                        ),
                                          ]
                                ),
                                Row(
                                    children: [
                                      RatingBar.builder(
                                        initialRating: 3.5,
                                        minRating: 1,
                                        // direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 10,
                                        itemBuilder: (context, _) => Container(
                                          // width: main_Width*0.70,
                                          child: Icon(
                                            Icons.star,
                                            color: Color(0xFFb8bec7),
                                          ),
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                      15.heightBox,
                                      Container(
                                          height:main_Height*0.012 ,
                                          width: main_Width*0.4,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF525770),
                                            border: Border.all(color: Color(0xFF525770)),
                                            borderRadius: const BorderRadius.all(
                                              Radius.circular(16),
                                            ),
                                          ),child: Center(
                                        child: Container(
                                          decoration:  BoxDecoration(
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(100)),
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.topRight,
                                              colors: [
                                                Color(0xFFFB6E37),
                                                Color(0xFF7D37FB)
                                              ],
                                              tileMode: TileMode.mirror,
                                            ),
                                          ),),
                                      ).box.padding(EdgeInsets.only(right: main_Width*0.25)).make()
                                      ),
                                    ]
                                ),
                                Row(
                                    children: [
                                      RatingBar.builder(
                                        initialRating: 2.5,
                                        minRating: 1,
                                        // direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 10,
                                        itemBuilder: (context, _) => Container(
                                          // width: main_Width*0.70,
                                          child: Icon(
                                            Icons.star,
                                            color: Color(0xFFb8bec7),
                                          ),
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                      15.heightBox,
                                      Container(
                                          height:main_Height*0.012 ,
                                          width: main_Width*0.4,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF525770),
                                            border: Border.all(color: Color(0xFF525770)),
                                            borderRadius: const BorderRadius.all(
                                              Radius.circular(16),
                                            ),
                                          ),child: Center(
                                        child: Container(
                                          decoration:  BoxDecoration(
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(100)),
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.topRight,
                                              colors: [
                                                Color(0xFFFB6E37),
                                                Color(0xFF7D37FB)
                                              ],
                                              tileMode: TileMode.mirror,
                                            ),
                                          ),),
                                      ).box.padding(EdgeInsets.only(right: main_Width*0.35)).make()
                                      ),
                                    ]
                                ),
                                Row(
                                    children: [
                                      RatingBar.builder(
                                        initialRating: 1.5,
                                        minRating: 1,
                                        // direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 10,
                                        itemBuilder: (context, _) => Container(
                                          // width: main_Width*0.70,
                                          child: Icon(
                                            Icons.star,
                                            color: Color(0xFFb8bec7),
                                          ),
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                      15.heightBox,
                                      Container(
                                          height:main_Height*0.012 ,
                                          width: main_Width*0.4,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF525770),
                                            border: Border.all(color: Color(0xFF525770)),
                                            borderRadius: const BorderRadius.all(
                                              Radius.circular(16),
                                            ),
                                          ),child: Center(
                                        child: Container(
                                          decoration:  BoxDecoration(
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(100)),
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.topRight,
                                              colors: [
                                                Color(0xFFFB6E37),
                                                Color(0xFF7D37FB)
                                              ],
                                              tileMode: TileMode.mirror,
                                            ),
                                          ),),
                                      ).box.padding(EdgeInsets.only(right: main_Width*0.30)).make()
                                      ),
                                    ]
                                ),
                                Row(
                                    children: [
                                      RatingBar.builder(
                                        initialRating: 1,
                                        minRating: 1,
                                        // direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 10,
                                        itemBuilder: (context, _) => Container(
                                          // width: main_Width*0.70,
                                          child: Icon(
                                            Icons.star,
                                            color: Color(0xFFb8bec7),
                                          ),
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                      15.heightBox,
                                      Container(
                                          height:main_Height*0.012,
                                          width: main_Width*0.4,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF525770),
                                            border: Border.all(color: Color(0xFF525770)),
                                            borderRadius: const BorderRadius.all(
                                              Radius.circular(16),
                                            ),
                                          ),child: Center(
                                        child: Container(
                                          decoration:  BoxDecoration(
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(100)),
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.topRight,
                                              colors: [
                                                Color(0xFFFB6E37),
                                                Color(0xFF7D37FB)
                                              ],
                                              tileMode: TileMode.mirror,
                                            ),
                                          ),),
                                      ).box.padding(EdgeInsets.only(right: main_Width*0.35)).make()
                                      ),
                                    ]
                                ),
                                5.heightBox,
                                Text("128 Rating",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),).
                                 box.margin(EdgeInsets.only(left: 110)).make()
                              ],
                            ).box.margin(EdgeInsets.only(right: 20)).make()
                          ],
                        )
                      ],
                    )
                  ],
                ).box.bottomRounded().color(Color(0xFF2e3350)).height(main_Height*0.25).make(),
                20.heightBox,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 35),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.circle_rounded,color: Color(0xFFfe631a),size: 30,),
                          Column(
                            children: [
                              Text("Archibald Northbottom",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),),
                              Text("12 REVIEWS, 12 SEP 2019",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w500),)
                              .box.margin(EdgeInsets.only(right: 65)).make()
                            ],
                          ).box.margin(EdgeInsets.only(right:45)).make(),
                          Row(
                            children: [
                              Icon(Icons.star,color: Color(0xFFffac00),size: 14,),
                              Text("(4.5)",style: TextStyle(color: Colors.white,fontSize: 8,fontWeight: FontWeight.w500),)
                            ],
                          )
                        ],
                      ),
                      10.heightBox,
                      RichText(text: TextSpan(text: "Watch Molly's Game yesterday, good movie, just a little too long for me Kevin Costner was excellent, as per usual.",style:
                      TextStyle(fontSize: 10,fontWeight: FontWeight.w400))),
                      10.heightBox,
                      Row(children: [
                      Text("Likes: 245",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),)]),
                    ],
                  ),
                ),
                20.heightBox,
                Divider(),
                10.heightBox,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 35),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.circle_rounded,color: Color(0xFFfe631a),size: 30,),
                          Column(
                            children: [
                              Text("Theodore Handle          ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),),
                              Text("08 REVIEWS, 12 SEP 2019",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w500),)
                                  .box.margin(EdgeInsets.only(right: 65)).make()
                            ],
                          ).box.margin(EdgeInsets.only(right:45)).make(),
                          Row(
                            children: [
                              Icon(Icons.star,color: Color(0xFFffac00),size: 14,),
                              Text("(4.5)",style: TextStyle(color: Colors.white,fontSize: 8,fontWeight: FontWeight.w500),)
                            ],
                          )
                        ],
                      ),
                      10.heightBox,
                      RichText(text: TextSpan(text: "Parking can be an issue and the neighborhood needs a little TLC, but the venue itself is excellent, if not a bit stuffy. The only real issues occur in the surrounding area, which unfortunately cannot be divorced from the venue, but the place is great.",style:
                      TextStyle(fontSize: 10,fontWeight: FontWeight.w400))),
                      10.heightBox,
                      Row(children: [
                        Text("Likes: 198",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),)]),
                    ],
                  ),
                ),
                20.heightBox,
                Divider(),
                10.heightBox,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 35),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.circle_rounded,color: Color(0xFFfe631a),size: 30,),
                          Column(
                            children: [
                              Text("Alan Fresco                   ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),),
                              Text("11 REVIEWS, 13 SEP 2019",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w500),)
                                  .box.margin(EdgeInsets.only(right: 65)).make()
                            ],
                          ).box.margin(EdgeInsets.only(right:45)).make(),
                          Row(
                            children: [
                              Icon(Icons.star,color: Color(0xFFffac00),size: 14,),
                              Text("(4.2)",style: TextStyle(color: Colors.white,fontSize: 8,fontWeight: FontWeight.w500),)
                            ],
                          )
                        ],
                      ),
                      10.heightBox,
                      RichText(text: TextSpan(text: "This theater is vintage and locally owned. Conveniently located on grand near lake Merritt, it's easy to get to and has plenty of showings and movies to choose from. I love supporting this theater whenever I can. It has old fashioned art and is decorated like a vintage theater.",style:
                      TextStyle(fontSize: 10,fontWeight: FontWeight.w400))),
                      10.heightBox,
                      Row(children: [
                        Text("Likes: 120",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),)]),
                    ],
                  ),
                ),

                20.heightBox,
                Divider(),
                10.heightBox,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 35),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.circle_rounded,color: Color(0xFFfe631a),size: 30,),
                          Column(
                            children: [
                              Text("Ursula Gurnmeister      ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),),
                              Text("12 REVIEWS, 16 SEP 2019",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w500),)
                                  .box.margin(EdgeInsets.only(right: 65)).make()
                            ],
                          ).box.margin(EdgeInsets.only(right:45)).make(),
                          Row(
                            children: [
                              Icon(Icons.star,color: Color(0xFFffac00),size: 14,),
                              Text("(3.9)",style: TextStyle(color: Colors.white,fontSize: 8,fontWeight: FontWeight.w500),)
                            ],
                          )
                        ],
                      ),
                      10.heightBox,
                      RichText(text: TextSpan(text: "This theater is vintage and locally owned. Conveniently located on grand near lake Merritt, it's easy to get to and has plenty of showings and movies to choose from. I love supporting this theater whenever I can. It has old fashioned art and is decorated like a vintage theater.",style:
                      TextStyle(fontSize: 10,fontWeight: FontWeight.w400))),
                      10.heightBox,
                      Row(children: [
                        Text("Likes: 120",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),)]),
                    ],
                  ),
                ),
                20.heightBox,
                Divider()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
