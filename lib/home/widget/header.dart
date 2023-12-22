import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            logo(),
           const SizedBox(width: 5,),
        
        
              Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
              Text(
                "Explore",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                "Packed with confidence",
                style: Theme.of(context).textTheme.displaySmall,
              )
                          ],
                        ),
          Text(
            "Telluride 2021",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Column(
            children: [
              Text(
                "\$ 32,190",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                "Starting MSRP*",
                style: Theme.of(context).textTheme.displaySmall,
              )
            ],
          ),
            
             IconButton(
                onPressed: () {},
                icon:const Icon(Icons.person),
              ),
        
               IconButton(
                onPressed: () {},
                icon:const Icon(Icons.menu),
                             ),
          ],
        ),
      ),
    );
  }


 

   logo() {
    return  Image.asset("asset/images/kialogo.png",);
  }
}
