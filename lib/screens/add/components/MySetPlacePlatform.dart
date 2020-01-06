import 'package:flutter/material.dart';


class MySetPlacePlatform extends StatefulWidget{

  MySetPlacePlatform ({Key key,this.geo}) : super (key:key);

  final String geo;

  @override
  _MySetPlacePlatform createState() => _MySetPlacePlatform();
}
class _MySetPlacePlatform extends State<MySetPlacePlatform> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            widget.geo,
            style: TextStyle(color: Colors.blue,fontSize: 18),
          ),
          FlatButton(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            onPressed: ()=>{
              print('object')
            },
            child: Text(
              'Выбрать',
              style: TextStyle(color: Colors.white,fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}