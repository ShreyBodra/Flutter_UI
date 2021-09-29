import 'package:flutter/material.dart';
import 'package:news_ui/widgets.dart';
import 'package:news_ui/data/data.dart';

class homepage extends StatefulWidget {
  static String id = "homepage";
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List cat = new List();
  List gen = new List();

  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      cat = getcategory();
      gen = getGeneralNews();
    }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        title : appbar()
      ),
      body: SingleChildScrollView(
      child: Container(
      child : Column(children: [
        Container(
          height: 70,
          margin: EdgeInsets.only(right: 14),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: cat.length,
            itemBuilder: (context,index){
            return categoryCard(
              image: cat[index]["image"],
              categoryName: cat[index]["categoryName"],
            );
          }),
        ),


        Container(
          child: ListView.builder(
            itemCount: gen.length,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemBuilder: (context,index){
            return newsCard(
              title: gen[index]["title"],
              imageurl: gen[index]["imageUrl"],
              content: gen[index]["content"],
            );
          }),
        )


      ],),),
      ),
      ),   
    );
  }
}


