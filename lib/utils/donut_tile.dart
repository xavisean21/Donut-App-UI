import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavour, donutPrice, imageName;
  final donutColour;
  final double borderRadius = 12;

  const DonutTile(
      {Key? key,
      required this.donutFlavour,
      required this.donutPrice,
      required this.donutColour,
      required this.imageName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColour[50],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: donutColour,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(borderRadius),
                          topRight: Radius.circular(borderRadius))),
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "\$$donutPrice",
                    style: TextStyle(
                        color: donutColour[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
              child: Image.asset(imageName),
            ),
            Text(
              donutFlavour,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              "Dunkins",
              style: TextStyle(color: Colors.grey[600]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.pink[400],
                ),
                Icon(
                  Icons.add,
                  color: Colors.grey[800],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
