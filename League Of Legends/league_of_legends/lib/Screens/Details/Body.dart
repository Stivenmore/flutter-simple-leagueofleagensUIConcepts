import 'package:flutter/material.dart';
import 'package:league_of_legends/Screens/Constants.dart';
import 'package:league_of_legends/custom_riot_icons.dart';
import 'package:league_of_legends/models/champions.dart';

import 'Components/Bottoms.dart';
import 'Components/Description.dart';
import 'Components/Namemoreriot.dart';

class BodyDetailDes extends StatelessWidget {
  final Champion champion;
  const BodyDetailDes({Key key, this.champion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  height: size.height * 0.7,
                  child: Image.asset(
                    champion.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(
                      top: size.height * 0.5,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(28),
                            topRight: Radius.circular(28))),
                    padding: EdgeInsets.only(
                        top: kpaddinsdefauld,
                        left: kpaddinsdefauld * 1.3,
                        right: kpaddinsdefauld * 1.3),
                        child:  Stack(
                           children:[ Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Namemoreriot(champion: champion),
                            SizedBox(
                              height: kpaddinsdefauld,
                            ),
                            SingleChildScrollView(child: Description(champion: champion)),
                            SizedBox(
                              height: kpaddinsdefauld,
                            ),
                          ],
                        ), Align(
                        alignment: Alignment.bottomCenter,
                        child: Buttoms(champion: champion))] 
                      ),
                    ),
              ],
            ),
          )
        ],
      );
  }
}


