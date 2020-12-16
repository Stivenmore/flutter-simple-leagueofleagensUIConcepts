import 'package:flutter/material.dart';
import 'package:league_of_legends/Screens/Constants.dart';
import 'package:league_of_legends/Screens/Details/Details_screen.dart';
import 'package:league_of_legends/models/champions.dart';

import 'ItemsCardDes.dart';

class ListviewCardDes extends StatelessWidget {
  const ListviewCardDes({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
        child: Container(
        width: double.infinity,
         child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: champions.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 13/10,
                    ), 
                    itemBuilder: (context, index) => ItemCardDes(
                      champion: champions[index],
                      press: ()=> Navigator.push(
                        context, MaterialPageRoute(builder: (contexto) => Detailsscreen(
                          champion: champions[index],
                        )
                        )
                      ),
                    )),
      ),
    );
  }
}
