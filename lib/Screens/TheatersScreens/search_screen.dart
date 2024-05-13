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
  int theatersearch = -1;

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1f203c),
        body: Column(
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
                        "Theaters",
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
                    // child: Icon(Icons.search,color: Colors.white,),
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _FilteredItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TheaterPlace()));
                      });
                    },
                    title: Row(
                      children: [
                        Text(
                          _FilteredItems[index],
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
