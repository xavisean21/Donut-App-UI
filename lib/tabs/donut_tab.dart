import 'package:flutter/material.dart';

import '../utils/donut_tile.dart';

class DonutTab extends StatelessWidget {
  List donutsOnSale = [
    //  [donutFlavour, donutPrice, donutColour, imageName ]
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "64", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "85", Colors.brown, "lib/images/chocolate_donut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(12),
        itemCount: donutsOnSale.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            childAspectRatio: 1 / 1.5,
            ),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlavour: donutsOnSale[index][0],
            donutPrice: donutsOnSale[index][1],
            donutColour: donutsOnSale[index][2],
            imageName: donutsOnSale[index][3],
          );
        });
  }
}
