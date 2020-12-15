import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:league_of_legends/Screens/Constants.dart';
import 'package:league_of_legends/models/topventas.dart';

class ItemsCardTop extends StatelessWidget {
  final Topventa topventa;

  const ItemsCardTop({Key key, this.topventa}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kpaddinsdefauld-4, vertical: kpaddinsdefauld/2),
            child: Row(
          children: [
            Container(
              height: 70,
              width: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: Image.asset(topventa.image, fit: BoxFit.contain,),
            ),
            Expanded(
                      child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${topventa.name}',
                    style: TextStyle(color: kcolorgray),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/logo-riot.svg'),
                      Text('${topventa.riot}', style: TextStyle(color: kcolorgray))
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 17,
              width: 60,
              color: kcolorOrange,
              child: Text('${topventa.ext}', textAlign: TextAlign.center, style: TextStyle(color: kcolorWhite),),
            )
          ],
        ),
      ),
    );
  }
}
