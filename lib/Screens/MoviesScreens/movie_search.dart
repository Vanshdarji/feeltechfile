import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MovieSearch extends StatefulWidget {
  @override
  _MovieSearchState createState() => _MovieSearchState();
}

class _MovieSearchState extends State<MovieSearch> {
  TextEditingController _searchController = TextEditingController();
  List<String> _fullList = [
    'Avengers 2018',
    'Jhonny Deep 2020',
    'Dr. Strange 2021',
    'Captain America 2019',
    'Titanic 2022'
  ];
  List<String> _filteredItems = [];

  @override
  void initState() {
    _filteredItems.addAll(_fullList);
    super.initState();
  }

  void _filterList(String query) {
    List<String> filteredList = _fullList
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();
    setState(() {
      _filteredItems.clear();
      _filteredItems.addAll(filteredList);
    });
  }

  int selectedmovie = -1;

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
                        "Movie",
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
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MovieSearch()));
                              },
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
                // scrollDirection: Axis.horizontal,
                itemCount: _filteredItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      setState(() {
                        selectedmovie = index;
                      });
                    },
                    title: Row(
                      children: [
                        Text(
                          _filteredItems[index],
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 14),
                        ),
                      ],
                    ),
                    trailing: Visibility(
                      visible: selectedmovie == index,
                      child: Icon(
                        Icons.done,
                        color: Colors.white,
                      ),
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
