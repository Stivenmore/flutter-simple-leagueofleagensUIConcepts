import 'package:flutter/material.dart';
import 'package:league_of_legends/models/champions.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.champion,
  }) : super(key: key);

  final Champion champion;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Text(
          '${champion.description}',
          style: TextStyle(fontSize: 16),
        ));
  }
}
