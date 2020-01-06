import 'package:flutter/material.dart';
import 'package:sportcity/components/My_Tag.dart';


class MyPickTag extends StatefulWidget{

  // MyPickTag ({Key key,this.geo}) : super (key:key);

  // final String geo;

  @override
  _MyPickTag createState() => _MyPickTag();
}
class _MyPickTag extends State<MyPickTag> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 16,
      height: 150,
      child:  ListView.builder(
        itemExtent: 150,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)=>My_Tag(
          name: 'asdsa',
        ),
        itemCount: 5,
      ),
    );
  }
}