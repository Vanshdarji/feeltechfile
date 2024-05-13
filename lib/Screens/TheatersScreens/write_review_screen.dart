import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:velocity_x/velocity_x.dart';

class WriteReviewScreen extends StatefulWidget {
  const WriteReviewScreen({super.key});

  @override
  State<WriteReviewScreen> createState() => _WriteReviewScreenState();
}

class _WriteReviewScreenState extends State<WriteReviewScreen> {
  TextEditingController Title = TextEditingController();
  TextEditingController Review = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff1f203c),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            Container(
          decoration: BoxDecoration(
            color: Color(0xff1f203c),
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
                      "Write a Review",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      40.heightBox,
                      Center(
                          child: Image(
                        image: AssetImage("Assets/images/DUMMY.png"),
                        width: main_Width * 0.40,
                      )),
                      20.heightBox,
                      RatingBar.builder(
                        initialRating: 4.5,
                        minRating: 1,
                        // direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 30,
                        itemPadding: EdgeInsets.symmetric(horizontal: 5.0),
                        itemBuilder: (context, _) => Container(
                          // width: main_Width*0.70,
                          child: Icon(
                            Icons.star,
                            color: Color(0xFFffac00),
                          ),
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      20.heightBox,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: TextFormField(
                            style: TextStyle(color: Colors.white, fontSize: 14),
                            controller: Title,
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return 'Give Some Title';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              fillColor: Color(0xFF2e3350),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              hintText: 
                                "Title",
                                hintStyle: TextStyle(color: Colors.white,
                              ),
                            )),
                      ),
                      20.heightBox,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          child: TextFormField(
                            style: TextStyle(color: Colors.white, fontSize: 14),
                            controller: Review,
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return 'Give Your Review';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              // contentPadding: EdgeInsets.symmetric(vertical: 10),
                              fillColor: Color(0xFF2e3350),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              hintText: 'Write your Review',
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                            maxLines: 10,
                            minLines: 5,
                          ),
                        ),
                      ),
                      10.heightBox,
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 40)),
                          RichText(
                            text: TextSpan(
                              text: "Minimun Characters: ",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                              children: const <TextSpan>[
                                TextSpan(
                                    text: ' 250',
                                    style: TextStyle(
                                        fontSize: 10, fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      20.heightBox,
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: main_Width * 0.70,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment(0.8, 1),
                              colors: [Color(0xFFFB6E37), Color(0xFF7D37FB)],
                              tileMode: TileMode.mirror,
                            ),
                          ),
                          child: TextButton(
                              onPressed: () {
                                if (_formkey.currentState!.validate()) {
                                  _formkey.currentState?.save();
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    content: Text("Thank You For Your Rview"),
                                    backgroundColor: Color(0xFFb542be),
                                    duration: Duration(seconds: 3),
                                  ));
                                  Navigator.of(context).pop();
                                }
                              },
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
