import 'package:flutter/material.dart';
import 'package:league_of_legends/Screens/Constants.dart';

class Store extends StatelessWidget {
  const Store({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kpaddinsdefauld*2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Tienda', style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: kcolorBlack,
          ),),
          GestureDetector(
          onTap: (){},
          child: Icon(Icons.search, color: kcolorBlack,))
        ],
      ),
    );
  }
}
