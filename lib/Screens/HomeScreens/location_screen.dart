import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vanshtask1/Screens/HelperScreen/images.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:widget_zoom/widget_zoom.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  TextEditingController _SearchLocation = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.of(context).pop();
          },icon: Icon(Icons.arrow_back_ios,size: 18,),),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0xff1f203c),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 15,top: 10),
              width: main_Width * 0.12,
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
                controller: _SearchLocation,
                // onChanged: _filterList,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search,color: Colors.white,size: 28,),
                ),
              ),
            ),
          ],
          title: Row(
            children: [
              Text(
                "Location",
                style:
                    TextStyle(color: Colors.white,fontSize: 20),
              )
            ],
          ),
        ),
        backgroundColor: Color(0xff1f203c),
        body: SingleChildScrollView(
                child: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              color:(Color(0xff2e3350)),
              height: main_Height * 0.60,
              width: main_Width * 0.75,
              child:InteractiveViewer(child: Image.asset("Assets/images/Map.jpeg",fit: BoxFit.cover,),),
            ).box.roundedFull.make(),
            25.heightBox,
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: main_Width * 0.70,
                  decoration: const BoxDecoration(

                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.8, 1),
                      colors: [
                        Color(0xFFFB6E37),
                        Color(0xFF7D37FB)
                      ],
                      tileMode: TileMode.mirror,
                    ),
                  ),
                  child: TextButton(
                      onPressed: () {
                        // Navigator.push(
                        // context,
                        // MaterialPageRoute(
                        //     builder: (context) => MainScreen()));
                      },
                      child: Text(
                        "Use My Location",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: main_Width * 0.04),
                      )),
                )
                ),
          ],
        ),
                ),
              ),
      ),
    );
  }
}
