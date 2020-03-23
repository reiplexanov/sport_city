import 'package:flutter/material.dart';

class IconLabel extends StatelessWidget{

  final  icons;
  final String label;

  const IconLabel({
    Key key,
    @required this.icons,
    @required this.label,
  }) : assert(
    label.length > 0,
  ), super(key : key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        width: 200,
        height: 25,
        child: Row(
          children: <Widget>[
            Icon(
              icons,
              color: Colors.blue,
              size: 30.0,
            ),
            Text(
              '$label',
              style: TextStyle(color: Colors.blue,fontSize: 16),
            )
          ],
        ),
      )
    );
  }
}