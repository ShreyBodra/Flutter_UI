import "package:flutter/material.dart";
import 'package:news_ui/pages/homepage.dart';
void main() => runApp(news());

class news extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF121212),
      ),

      initialRoute : homepage.id,
      routes: {
        homepage.id: (context) => homepage(),
      },
    );
  }
}
