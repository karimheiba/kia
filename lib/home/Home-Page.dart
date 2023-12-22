import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kia/home/widget/car-slider.dart';
import 'package:kia/home/widget/footer.dart';
import 'package:kia/home/widget/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:  Color.fromARGB(255, 54, 53, 53),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        Header(),
        // SizedBox(height: 20,),
        CarSlider() ,
        
        Footer(),
        
             ],),
      )
    );
  }
}