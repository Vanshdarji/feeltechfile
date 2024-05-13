import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CountryScreen extends StatefulWidget {
  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  TextEditingController _SearchCountry = TextEditingController();
  List<String> _CountryList = [
    'India',
    'England',
    'Germany',
    'Russia',
    'Japan',
    'Korea',
    'Hong Kong',
    'Itly',
    'China',
    'Ukrain',
  ];
  List<String> _CountryItems = [];
  int selectedcountry=-1;

  @override
  void initState() {
    _CountryItems.addAll(_CountryList);
    super.initState();
  }

  void _filterList(String query) {
    List<String> filteredList = _CountryList.where(
        (item) => item.toLowerCase().contains(query.toLowerCase())).toList();
    setState(() {
      _CountryItems.clear();
      _CountryItems.addAll(filteredList);
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
                                  icon: Icon(Icons.arrow_back_ios, color: Colors.white,size: 18,),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                Text(
                                  "Country",
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
              // padding: EdgeInsets.symmetric(horizontal: 15),
              // margin: EdgeInsets.only(top: 10),
              child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: _CountryItems.length,
                  itemBuilder: (context, index) {
                    final Country = _CountryItems[index];
            
                    return Container(
                      child: ListTile(
                        onTap: () {
                          Navigator.pop(context, Country);
                        },
                        title: Row(
                          children: [
                            Text(
                              (Country),
                              style:
                              TextStyle(color: Colors.white, fontWeight: FontWeight.w300,fontSize: 15),
                              softWrap: true,
                            ),
                          ],
                        ),
                        trailing: Visibility(
                          visible:  selectedcountry == index,
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 2,
                    ).box.padding(EdgeInsets.symmetric(horizontal: 15)).make();
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
