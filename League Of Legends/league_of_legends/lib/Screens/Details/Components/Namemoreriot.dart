import 'package:flutter/material.dart';
import 'package:league_of_legends/models/champions.dart';

import '../../../custom_riot_icons.dart';
import '../../Constants.dart';

class Namemoreriot extends StatelessWidget {
  const Namemoreriot({
    Key key,
    @required this.champion,
  }) : super(key: key);

  final Champion champion;

  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text('${champion.name}', style: TextStyle(fontSize: 15),),
    SizedBox(height: kpaddinsdefauld/4),
    Row(
      children: [
        Icon(CustomRiotIcons.riot, size: 18,),
        SizedBox(width: kpaddinsdefauld/4),
        Expanded(child: Text('${champion.riot}')),
        Container(
          decoration: BoxDecoration(
            color: kcolorOrange,
            borderRadius: BorderRadius.circular(5)
          ),
          width: 30,
          height: 16,
          child: Row(
            children: [
              Opacity(
              opacity: 0.5,
              child: Icon(Icons.shopping_cart, color: kcolorWhite,size: 14,)),
              Icon(Icons.add, color: kcolorWhite,size: 14,),
            ],
          ),
        )
      ],
    ),
    ],);
  }
}