import 'package:flutter/material.dart';
import 'package:kia/home/Home-Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme:const IconThemeData(color: Colors.white),
       
       
          textTheme: const TextTheme(
        displayMedium: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),
            displaySmall:TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w100)
      )),
      home:const HomePage(),
    );
  }
}
