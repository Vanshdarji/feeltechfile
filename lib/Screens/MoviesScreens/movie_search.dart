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
  int selectedmovie=-1;

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
        actions: [
          Container(
            width: main_Width * 0.12,
            height: main_Height*0.1,
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
            child: Icon(Icons.search,color: Colors.white,size: 28,),)
        ],
        title: Row(
          children: [
            Text(
              "Movies Search",
              style: TextStyle(color: Colors.white,fontSize: 20),
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: _filteredItems.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: (){
                  setState(() {
                    selectedmovie=index;
                  });
                },
                title: Row(
                  children: [
                    Text(
                      _filteredItems[index],
                      style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.w300,fontSize: 14),
                    ),
                  ],
                ),
                trailing: Visibility(
                  visible:  selectedmovie == index,
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
