import 'package:donut_app_flutter_ui/tabs/burger_tab.dart';
import 'package:donut_app_flutter_ui/tabs/donut_tab.dart';
import 'package:donut_app_flutter_ui/tabs/pancake_tab.dart';
import 'package:donut_app_flutter_ui/tabs/pizza_tab.dart';
import 'package:donut_app_flutter_ui/tabs/smoothie_tab.dart';
import 'package:donut_app_flutter_ui/utils/my_tab_dart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    MyTab(
      iconPath: 'lib/icons/burger.png',
    ),
    MyTab(
      iconPath: 'lib/icons/donut.png',
    ),
    MyTab(
      iconPath: 'lib/icons/pancakes.png',
    ),
    MyTab(
      iconPath: 'lib/icons/pizza.png',
    ),
    MyTab(
      iconPath: 'lib/icons/smoothie.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                //open a drawer
              },
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
              )),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: () {
                  //    account button tapped
                },
              ),
            )
          ],
        ),
        body: Column(
          children: [
            //  i want to eat
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: [
                  Text(
                    "I want to eat",
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "EAT",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            TabBar(tabs: myTabs),
            //  tab bar
            Expanded(
                child: TabBarView(children: [

                  DonutTab(),
              //  donut page
                  BurgerTab(),
              //  burger page
                  SmoothieTab(),
              //  smoothie page
                  PancakeTab(),
              //  pancake page
                  PizzaTab(),
              //  pizza page
            ]))
            //  tab bar view
          ],
        ),
      ),
    );
  }
}
