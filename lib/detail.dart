import 'package:flutter/material.dart';
import 'package:food_list/model/food.dart';

class Detail extends StatelessWidget {
  static String tag = '/detail';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    ThemeData themeData = Theme.of(context);

    final Food food = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Food Detail', textAlign: TextAlign.center),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Hero(
              tag: 'imageFood',
              child: Padding(
                padding: EdgeInsets.all(16.00),
                child:  CircleAvatar(
                  radius: 72.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(food.imgUrl),
                ),
              )),
          Padding(
            padding: EdgeInsets.all(8.0),
            child:
            Text(food.name, style: themeData.textTheme.title),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child:
            Text(food.desc, style: themeData.textTheme.body1),
          )
        ],
      ),
    );
  }
}
