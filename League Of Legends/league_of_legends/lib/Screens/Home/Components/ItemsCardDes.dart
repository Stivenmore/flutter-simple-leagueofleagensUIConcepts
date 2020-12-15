import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:league_of_legends/Screens/Constants.dart';
import 'package:league_of_legends/models/champions.dart';

class ItemCardDes extends StatelessWidget {
  final Champion champion;
  final Function press;

  const ItemCardDes({Key key, this.champion, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
          child: Padding(
        padding: EdgeInsets.only(left: 20),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: Image.asset(champion.image, fit: BoxFit.cover, height: 300,width: 250,),
              ), Padding(
                padding: const EdgeInsets.only(left: kpaddinsdefauld),
                child: Text(champion.name, style: TextStyle(fontSize:14)),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: kpaddinsdefauld),
                child: Row(children: [
                  SvgPicture.asset('assets/icons/logo-riot.svg'),
                  SizedBox(width: 5,),
                  Text(
                    '${champion.riot}'
                  )
                ],),
              )
            ],
          ),
        
      ),
    );
  }
}
