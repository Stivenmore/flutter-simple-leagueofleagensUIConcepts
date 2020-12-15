import 'package:flutter/material.dart';
import 'package:league_of_legends/models/champions.dart';

import '../../../custom_riot_icons.dart';
import '../../Constants.dart';

class Buttoms extends StatelessWidget {
  const Buttoms({
    Key key,
    @required this.champion,
  }) : super(key: key);

  final Champion champion;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 50,
              width: 58,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: kcolorOrange)),
              child: Hero(
                  tag: '${champion.id}',
                  child: IconButton(
                      icon: Icon(
                        Icons.close,
                        color: kcolorOrange,
                      ),
                      onPressed: () =>
                          Navigator.pop(context)))),
        ),
        Expanded(
          child: SizedBox(
            height: 50,
            child: FlatButton(
                onPressed: () {},
                color: kcolorOrange,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    Icon(
                      CustomRiotIcons.riot,
                      color: kcolorWhite,
                      size: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(.0),
                      child: Text(
                        '${champion.riot}',
                        style:
                            TextStyle(color: kcolorWhite),
                      ),
                    )
                  ],
                )),
          ),
        )
      ],
    );
  }
}