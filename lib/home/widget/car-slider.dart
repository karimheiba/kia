// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CarSlider extends StatefulWidget {
   const CarSlider({super.key});


  @override
  State<CarSlider> createState() => _CarSliderState();
}

class _CarSliderState extends State<CarSlider> {

    int _currentIndex = 0;

  final _imagePaths=[
"asset/car/Property 1=1.png" ,
"asset/car/Property 1=2.png",
"asset/car/Property 1=3.png",
"asset/car/Property 1=4.png",
"asset/car/Property 1=5.png"

///   use listview.builder

 ];


  void _nextImage() {
    setState(() {
      _currentIndex =  (_currentIndex + 1) % _imagePaths.length;
    });
  }

  void _previousImage() {
    setState(() {
      _currentIndex = (_currentIndex - 1 + _imagePaths.length) % _imagePaths.length;
    });
  }
 @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 40),
      child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon:const Icon(Icons.arrow_back),
                onPressed: _previousImage,
              ),
              Expanded(
                child: AnimatedSwitcher(
                  switchInCurve: Curves.easeInOutCubicEmphasized,
                  duration:const Duration(milliseconds: 0),
                  transitionBuilder: (Widget child, Animation<double> animation) {
                    return ScaleTransition(
                    
                      scale: animation,
                    
                      child: child,
                    );
                  },
                  child: Container(
                    
                    key: ValueKey<int>(_currentIndex),
                    // width: 400,
                    height: 400,
                   
                    child: Image.asset(
                      _imagePaths[_currentIndex],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon:const Icon(Icons.arrow_forward),
                onPressed: _nextImage,
              ),
            ],
          ),
        ),
    );
  }




    
    
    
    
  }
    
    