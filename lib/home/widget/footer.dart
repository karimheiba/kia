import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 35.0, left: 35,top: 20,bottom: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// Left section contain the logo, app store  ad copy wright
          leftSection(context),
        // const  SizedBox(
        //     width: 10,
        //   ),
      
          // middle Section
          middleSection(context),
        //  const SizedBox(
        //     width: 20,
        //   ),
      
          /// end section
          endSection(context)
        ],
      ),
    );
  }

   endSection(BuildContext context) {
    return Row(
      children: [
       const Icon(Icons.done,size: 15,),
        SizedBox(
          width: 15,
        ),
        Text("Dark Moss",
            style: Theme.of(context).textTheme.displaySmall),
            SizedBox(width: 20,),
        Column(
          children: [
            GestureDetector(
              onTap: () {
              },
              child:const Icon(Icons.keyboard_arrow_up,size: 15,)),
            GestureDetector(
              onTap: () {
                
              },
              child:const Icon(Icons.keyboard_arrow_down,size: 15,)),
            
          ],
        ),
        SizedBox(width: 20,),
        Image.asset("asset/images/Navigation.png",width: 24,height: 25,color: Color(0xffBCBABA),)
      ],
    );
  }

  Column middleSection(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Interior",
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 12, color:const Color(0xff9C9999)),
            ),
            SizedBox(
              width: 12,
            ),
            Text(" Exterior", style: Theme.of(context).textTheme.displaySmall),
          ],
        ),
      const  SizedBox(
          height: 10,
        ),
        Container(
          width: 350,
          child: Text(
              "The Telluride packs a long list of standard features, \nimpressive handling and power, advanced technology, and the most interior passenger room in its segment.",
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontSize: 12,
                    color:const Color(0xff9C9999),
                    overflow: TextOverflow.fade,
                    
                  )),
        )
      ],
    );
  }

  /// Left section contain the logo, app store  ad copy wright
  Column leftSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              "asset/images/kialogo.png",
              width: 43,
              height: 10,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "In sync with you.",
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 12, color:const Color(0xff9C9999)),
            )
          ],
        ),
      const  SizedBox(
          height: 20,
        ),
        Image.asset(
          "asset/images/app stor.png",
          width: 211.02,
          height: 26.73,
        ),
      const  SizedBox(
          height: 30,
        ),
        Text("© 2021 Kia America, Inc.",
            style: Theme.of(context).textTheme.displaySmall)
      ],
    );
  }
}
