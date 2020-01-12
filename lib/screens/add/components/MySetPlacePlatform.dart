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
    return Padding(
      padding: EdgeInsets.only(left: 16,right: 16),
      child: Row(
        children: <Widget>[
         Expanded(
           flex: 1,
           child: Text(
            widget.geo,
            style: TextStyle(color: Colors.blue,fontSize: 18),
            textAlign: TextAlign.start,
          ),
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