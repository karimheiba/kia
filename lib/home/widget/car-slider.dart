import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/carslider_provider.dart';

class CarSlider extends StatefulWidget {
  const CarSlider({Key? key}) : super(key: key);

  @override
  State<CarSlider> createState() => _CarSliderState();
}

class _CarSliderState extends State<CarSlider> {
  @override
  void initState() {
    super.initState();

    // Pre-cache images
    precacheImages();
  }

  void precacheImages() async {
    CarSliderProvider provider = Provider.of<CarSliderProvider>(context, listen: false);

    for (String imagePath in provider.imagePaths) {
      await precacheImage(AssetImage(imagePath), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CarSliderProvider(),
      child: Consumer<CarSliderProvider>(
        builder: (context, provider, child) {
          return Padding(
            padding:  EdgeInsets.symmetric(  horizontal: MediaQuery.of(context).size.width * 0.05,
    vertical: MediaQuery.of(context).size.height * 0.02,),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: provider.previousImage,
                  ),
                  Expanded(
                    child: AnimatedSwitcher(
                      switchInCurve: Curves.slowMiddle,
                      duration: const Duration(milliseconds: 1),
                      transitionBuilder: (Widget child, Animation<double> animation) {
                        return ScaleTransition(
                          scale: animation,
                          child: child,
                        );
                      },
                      child: Container(
                        key: ValueKey<int>(provider.currentIndex),
                        height: 400,
                        child: Image.asset(
                          provider.currentImagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: provider.nextImage,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
