import 'package:flutter/material.dart';

import './find_donators.dart';

class Tabs extends StatefulWidget {
  static String tabs = 'tabs';
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int index = 0;
  List<Widget> _widgets = [FindDonators(), FindDonators(), FindDonators()];
  tapped(int tappedIndex) {
    setState(() {index = tappedIndex;});
  }
  @override Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _widgets[index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: tapped,
          items: [
            BottomNavigationBarItem(icon: new Icon(Icons.looks_one), title: Text('One')),
            BottomNavigationBarItem(icon: new Icon(Icons.looks_two), title: Text('Two')),
            BottomNavigationBarItem(icon: new Icon(Icons.looks_3), title: Text('Three')),
          ],
        ),
      ),
    );
  }
}
