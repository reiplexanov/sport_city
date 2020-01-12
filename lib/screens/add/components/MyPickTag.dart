import 'package:flutter/material.dart';
import 'package:sportcity/components/My_Tag.dart';

class MyPickTag extends StatefulWidget{
  
  MyPickTag ({
  
  Key key, 
  }) : super (key:key);


  @override
  _MyTagList createState() => _MyTagList();
}

class _MyTagList extends State<MyPickTag>{

  List<String> tag=[
    'assets/images/tag/tag4.png',
    'assets/images/tag/tag5.png',
    'assets/images/tag/tag6.png',
    'assets/images/tag/tag7.png',
    'assets/images/tag/tag8.png',
    'assets/images/tag/tag9.png',
    'assets/images/tag/tag10.png',
    'assets/images/tag/tag11.png',
    'assets/images/tag/tag12.png',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemBuilder: (context,index)=>My_Tag(
      name: 'items $index',
      img: tag[index],
    ),
    itemCount: tag.length,
   );
  }
}