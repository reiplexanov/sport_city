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
        children: <Widget>[
          Text(
            widget.geo,
            style: TextStyle(color: Colors.blue,fontSize: 18),
          ),
          IconButton(
            icon: Icon(Icons.map),
            color: Colors.blue,
            onPressed: (){
              print('object');
            },
          )
        ],
      ),
    );
  }
}