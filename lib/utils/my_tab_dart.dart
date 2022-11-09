import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {

  final String iconPath;
  const MyTab({Key? key, required this.iconPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Container(
          padding: EdgeInsets.all(3),
          child: Image.asset(iconPath),
          color: Colors.grey.shade200,
        ),
      ),
    );
  }
}
