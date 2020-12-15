import 'package:flutter/material.dart';

import '../../../custom_riot_icons.dart';
import '../../Constants.dart';

class BNavigatorB extends StatefulWidget {
  BNavigatorB({Key key}) : super(key: key);

  @override
  _BNavigatorBState createState() => _BNavigatorBState();
}

class _BNavigatorBState extends State<BNavigatorB> {
  int _selectItem = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        unselectedItemColor: kcolorgray,
        currentIndex: _selectItem,
        selectedItemColor: kcolorOrange,
        selectedFontSize: 12,
        unselectedFontSize: 0,
        onTap: _ontap,
        iconSize: 24,
        elevation: 1.0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              title: Text('Shopping')),
          BottomNavigationBarItem(
              icon: Icon(
                CustomRiotIcons.riot,
                size: 20,
              ),
              title: Text('Riot')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('Settings'))
        ]);
  }

  void _ontap(int index) {
    setState(() {
      _selectItem = index;
    });
  }
}
