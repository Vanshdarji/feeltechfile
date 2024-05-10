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
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        },icon: Icon(Icons.arrow_back_ios,size: 18,),),
        iconTheme: IconThemeData(color: Colors.white),
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
      backgroundColor: Color(0xff1f203c),
        title: Row(
          children: [
            Text(
              "Favourite",
              style:
                  TextStyle(color: Colors.white,fontSize: 18),
            )
          ],
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Action",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ).box.padding(EdgeInsets.only(left: 30)).make(),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "VIEW ALL",
                    style: TextStyle(color: Colors.white,fontSize: main_Width*0.03),
                  )).box.padding(EdgeInsets.only(right: 20)).make()
            ],
          ).box.margin(EdgeInsets.only(top: 30)).make(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(45),
                child: Image.asset(
                  cartoon,
                  width: main_Width * 0.40,
                  height: main_Height * 0.30,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  strange,
                  width: main_Width * 0.40,
                  height: main_Height * 0.30,
                ),
              )
            ],
          ),
          10.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Text(
                  "Copsc Bride...",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Container(
                child: Text(
                  "Dr.Strang",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Love,Comady",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              Text(
                "Action,Thriler",
                style: TextStyle(color: Colors.white, fontSize: 10),
              )
            ],
          ),
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(55),
                child: Image.asset(
                  Birds,
                  width: main_Width * 0.40,
                  height: main_Height * 0.15,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  Jungle,
                  width: main_Width * 0.40,
                  height: main_Height * 0.15,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Birds Go...",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                "The Craods...",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Love,Comady",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              Text(
                "Action,Comady",
                style: TextStyle(color: Colors.white, fontSize: 10),
              )
            ],
          ),
          20.heightBox,
          Divider(
            color: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Animation",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ).box.padding(EdgeInsets.only(left: 30)).make(),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "VIEW ALL",
                    style: TextStyle(color: Colors.white,fontSize: main_Width*0.03),
                  )).box.padding(EdgeInsets.only(right: 20)).make()
            ],
          ),
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(90),
                child: Image.asset(
                  Marvel,
                  width: main_Width * 0.40,
                  height: main_Height * 0.28,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(45),
                child: Image.asset(
                  avenger,
                  width: main_Width * 0.40,
                  height: main_Height * 0.30,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Captain Ame...",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                "The Avengers...",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Love,Comady",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              Text(
                "Action,Comady",
                style: TextStyle(color: Colors.white, fontSize: 10),
              )
            ],
          ),
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(45),
                child: Image.asset(
                  cartoon,
                  width: main_Width * 0.40,
                  height: main_Height * 0.30,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  strange,
                  width: main_Width * 0.40,
                  height: main_Height * 0.30,
                ),
              )
            ],
          ),
          10.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Copsc Bride...",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                "Dr.Strange...",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Love,Comady",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              Text(
                "Action,Thriler",
                style: TextStyle(color: Colors.white, fontSize: 10),
              )
            ],
          ),
        ],
      ))),
    );
  }
}
