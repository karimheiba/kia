import 'package:flutter/foundation.dart';

class CarSliderProvider extends ChangeNotifier {
  int _currentIndex = 0;

  final List<String> _imagePaths = [
    "asset/car/Property 1=1.png",
    "asset/car/Property 1=2.png",
    "asset/car/Property 1=3.png",
    "asset/car/Property 1=4.png",
    "asset/car/Property 1=5.png",
  ];

  int get currentIndex => _currentIndex;

  String get currentImagePath => _imagePaths[_currentIndex];

  List<String> get imagePaths => _imagePaths;

  void nextImage() {
    _currentIndex = (_currentIndex + 1) % _imagePaths.length;
    notifyListeners();
  }

  void previousImage() {
    _currentIndex = (_currentIndex - 1 + _imagePaths.length) % _imagePaths.length;
    notifyListeners();
  }
}
