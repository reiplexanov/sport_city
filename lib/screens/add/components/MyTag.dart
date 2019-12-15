import 'package:flutter/material.dart';
import 'package:flutter_tags/tag.dart';

class MyTag extends StatefulWidget{

  MyTag ({Key key,this.tag}) : super (key:key);

  final String tag;

  @override
  _MyTag createState() => _MyTag();

}

class _MyTag extends State<MyTag> {

  

  @override
  Widget build(BuildContext context) {
    return Text(
      'sadad'
    );
  }
}