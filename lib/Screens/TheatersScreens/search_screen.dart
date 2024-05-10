import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vanshtask1/Screens/TheatersScreens/place_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class TheaterSearch extends StatefulWidget {
  @override
  State<TheaterSearch> createState() => _TheaterSearchState();
}

class _TheaterSearchState extends State<TheaterSearch> {
  TextEditingController _SearchController = TextEditingController();
  List<String> _FullList = [
    'TCL Chinese Theater',
    'Dolby Theaterss',
    'Inox Theaterss',
  ];
  List<String> _FilteredItems = [];
  int theatersearch=-1;

  @override
  void initState() {
    _FilteredItems.addAll(_FullList);
    super.initState();
  }

  void _filterList(String query) {
    List<String> filteredList = _FullList.where(
        (item) => item.toLowerCase().contains(query.toLowerCase())).toList();
    setState(() {
      _FilteredItems.clear();
      _FilteredItems.addAll(filteredList);
    });
  }

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
        backgroundColor: Color(0xff1f203c),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Theaters",
              style:
                  TextStyle(color: Colors.white,fontSize: 20),
            ),
          ],
        ),
        actions: [
          Container(
            width: main_Width * 0.12,
            margin: EdgeInsets.only(right: 15,top: 10),
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
              controller: _SearchController,
              onChanged: _filterList,
              decoration: InputDecoration(
                // hintText: 'Search...',
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search,color: Colors.white,size: 28,)
              ),
            ),
          ),
        ],
      ),
      body: Container(
        // margin: EdgeInsets.only(right: main_Width * 0.4),
        child: ListView.builder(
          itemCount: _FilteredItems.length,
          itemBuilder: (context, index) {
            return ListTile(
              onLongPress: (){
                setState(() {
                  theatersearch=index;
                });
              },
              title: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TheaterPlace()));
                    },
                    child: Text(
                      _FilteredItems[index],
                      style: TextStyle(
                          color: Color(0xffb0b6ba), fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              trailing: Visibility(
                visible:  theatersearch == index,
                child: Icon(
                  Icons.done,
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
