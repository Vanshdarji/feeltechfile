import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class LanguageScreen extends StatefulWidget {
  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  TextEditingController _SearchController = TextEditingController();
  List<String> _FullList = [
    'English',
    'Hindi',
    'German',
    'Chinese',
    'Japanese',
    'Russian',
    'Korean',
    'Balgium',
    'french',
    'italian',
  ];
  List<String> _FilteredItems = [];
  int selectedAge = -1;


  @override
  void initState() {
    _FilteredItems.addAll(_FullList);
    super.initState();
  }

  void _filterList(String query) {
    List<String> filteredList = _FullList
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();
    setState(() {
      _FilteredItems.clear();
      _FilteredItems.addAll(filteredList);
    });
  }
  // final String selectedName =
  // ModalRoute.of(context)!.settings.arguments as String;

  @override
  Widget build(BuildContext context) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1f203c),
        // appBar: AppBar(
        //   leading: IconButton(onPressed: (){
        //     Navigator.of(context).pop();
        //   },icon: Icon(Icons.arrow_back_ios,size: 18,),),
        //   iconTheme: IconThemeData(color: Colors.white),
        //   backgroundColor: Color(0xff1f203c),
        //   title: Row(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        //       Text(
        //         "Language",
        //         style: TextStyle(color: Colors.white,fontSize: 20),
        //       ),
        //     ],
        //   ),
        //   actions: [
        //     Container(
        //       width: main_Width * 0.12,
        //       margin: EdgeInsets.only(right: 15,top: 10),
        //       // child: Icon(Icons.search,color: Colors.white,),
        //       decoration: BoxDecoration(
        //         gradient: LinearGradient(
        //           begin: Alignment.topLeft,
        //           end: Alignment(0.8, 1),
        //           colors: [
        //             Color(0xFFFB6E37),
        //             Color(0xFF7D37FB)
        //           ],
        //           tileMode: TileMode.mirror,
        //         ),
        //         borderRadius: BorderRadius.circular(25.0),
        //       ),
        //       child: TextField(
        //         // controller: _SearchController,
        //         // onChanged: _filterList,
        //         decoration: InputDecoration(
        //           border: InputBorder.none,
        //           prefixIcon: Icon(Icons.search,color: Colors.white,size:28,),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        body: Expanded(
          child: Column(
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
                              "Languages",
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
                height: main_Height*0.75,
                child: ListView.separated(
                  // shrinkWrap: true,
                  itemCount: _FilteredItems.length,
                  itemBuilder: (context, index) {
                    final language = _FilteredItems[index];
                    return Container(
                      child: ListTile(
                        onTap: () {
                          Navigator.pop(context, language);
                        },
                        title:
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  (language),
                                  style: TextStyle(color: Colors.white,
                                      fontWeight: FontWeight.w300,fontSize: 15),
                                  softWrap: true,
                                )
                              ],
                            ),
                            trailing: Visibility(
                              visible:  selectedAge == index,
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
    ));
  }
}
