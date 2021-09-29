import 'package:flutter/material.dart';

Widget appbar(){
  return Container(
    child: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("Breaking", style: TextStyle(color: Colors.red,fontStyle: FontStyle.italic),),
        SizedBox(width: 50,)
      ],),
      Row(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
        SizedBox(width: 25,),
        Text("News",style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic)) 
      ],)
    ],),
  );
}


class categoryCard extends StatelessWidget {
  final String image,categoryName;
  categoryCard({this.categoryName,this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.fromLTRB(10, 10, 0, 10),
      child: Stack(children: [
        ClipRRect(
              borderRadius: BorderRadius.circular(5),

              child: Image.asset(
                image,
                height: 60,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
        Container(
          alignment: Alignment.center,
          width: 120,
          height: 60,
        
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.black26,
          ),
          child: Text(categoryName,
          textAlign: TextAlign.center,
          ),
          )
      ],),
    );
  }
}

class newsCard extends StatelessWidget {
  final String imageurl, title, content;
  newsCard({this.content,this.imageurl,this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(
            imageurl,
            height: 200,
            width:MediaQuery.of(context).size.width,                        fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            title,
             //maxLines: 3,
            style: 
            TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
          ),
         SizedBox(
            height: 4,
          ),
          Text(
            content,
            maxLines: 2,
            style: 
            TextStyle(
              color: Colors.white, 
              fontSize: 14
            ),
          )
        ],
      ),
    );
  }
}


