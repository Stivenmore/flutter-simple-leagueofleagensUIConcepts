import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:league_of_legends/Screens/Home/Components/ListViewCardDes.dart';
import 'package:league_of_legends/Screens/Home/Components/categorie.dart';
import 'package:league_of_legends/Screens/Home/Components/store.dart';
import 'package:league_of_legends/custom_riot_icons.dart';

import '../Constants.dart';
import 'Components/BNavigatorB.dart';
import 'Components/ListViewCardTop.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
          children:[  Column(
              children: [
                  SizedBox(height: 20),
                  Store(),
                  SizedBox(
                    height: 10,
                  ),
                  Categories(),
                  SizedBox(
                    height: 5,
                  ),
                  ListviewCardDes(),
                  SizedBox(
                    height: 10,
                  ),
                  Masvendidos(),
                  SizedBox(height: 3,),
                  ListViewCardTop(),
                   ],
            ),
            Align(
            alignment: Alignment.bottomCenter,
            child: BNavigatorB())
                    ]),
        
      ),
    );
  }
}

class Masvendidos extends StatelessWidget {
  const Masvendidos({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(left: 35),
        height: 30,
        child: Text('Mas vendidos',
            style: TextStyle(
              fontSize: 20,
            )));
  }
}
