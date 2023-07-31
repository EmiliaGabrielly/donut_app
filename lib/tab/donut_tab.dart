import 'package:flutter/material.dart';
import 'package:donnut_app/util/donut_tiler.dart';

class DonutTab extends StatelessWidget {

  List donutsOnSale= [
    ["Donuts", "22", Colors.blue, "lib/images/donuts.png"],
    ["Donuts", "16", Colors.red, "lib/images/donuts(1).png"],
    ["Rosquinha", "12", Colors.purple, "lib/images/rosquinha.png"],
    ["Rosquinhas", "18", Colors.brown, "lib/images/rosquinhas.png"],
  ];
  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: 
      SliverGridDelegateWithFixedCrossAxisCount( 
        crossAxisCount: 2,
        childAspectRatio:1/ 1.5 ,
        ),
         itemBuilder: (context, index) {
           return DonutTile (
            donutFlavor: donutsOnSale [index][0],
            donutPrice: donutsOnSale [index] [1],
            donutColor: donutsOnSale [index] [2],
            imageName: donutsOnSale [index] [3],
           );
  },    
  );
 }
}