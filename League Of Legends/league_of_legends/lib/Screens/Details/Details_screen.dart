import 'package:flutter/material.dart';
import 'package:league_of_legends/Screens/Constants.dart';
import 'package:league_of_legends/Screens/Details/Body.dart';
import 'package:league_of_legends/models/champions.dart';

class Detailsscreen extends StatelessWidget {
  final Champion champion;
  final Champion topventas;

  const Detailsscreen({Key key, this.champion, this.topventas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcolorWhite,
      body: BodyDetailDes(champion: champion,),
    );
  }
}
