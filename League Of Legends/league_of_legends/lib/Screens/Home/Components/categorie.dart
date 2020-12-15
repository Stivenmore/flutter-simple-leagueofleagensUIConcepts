import 'package:flutter/material.dart';
import 'package:league_of_legends/Screens/Constants.dart';

class Categories extends StatefulWidget {
  Categories({Key key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categorria = ['Destacados', 'Campeones', 'Aspectos', 'Botin', 'Eventos'];
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorria.length,
          itemBuilder: (context, index) => buildCategory(index)),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: kpaddinsdefauld + 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(categorria[index],
                style: TextStyle(
                    fontSize: 15,
                    color: selectIndex == index ? kcolorOrange : kcolorgray)),
            Container(
                height: 2,
                width: 60,
                color: selectIndex == index ? kcolorOrange : kcolorgray)
          ],
        ),
      ),
    );
  }
}
