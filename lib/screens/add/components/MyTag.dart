import 'package:flutter/material.dart';
import 'package:flutter_tags/tag.dart';
import 'package:sportcity/function/MyChangeTag.dart';

class MyTag extends StatefulWidget{

  MyTag ({Key key,this.tag}) : super (key:key);

  final String tag;

  @override
  _MyTag createState() => _MyTag();

}

class _MyTag extends State<MyTag> {

  String text = MyChangeTag().ttext;

  @override
  Widget build(BuildContext context) {
    return Text(
      MyChangeTag().getalltag()
    );
  }
}