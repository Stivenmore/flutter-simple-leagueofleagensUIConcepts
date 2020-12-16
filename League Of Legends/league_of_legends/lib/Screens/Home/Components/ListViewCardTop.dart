import 'package:flutter/material.dart';
import 'package:league_of_legends/Screens/Home/Components/itemsCardTop.dart';
import 'package:league_of_legends/models/champions.dart';

class ListViewCardTop extends StatefulWidget {
  ListViewCardTop({Key key}) : super(key: key);

  @override
  _ListViewCardTopState createState() => _ListViewCardTopState();
}

class _ListViewCardTopState extends State<ListViewCardTop> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: 280,
            child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: topventas.length,
            itemBuilder: (context, index) => ItemsCardTop(
                  topventa: topventas[index],
                )),
      
    );
  }
}
