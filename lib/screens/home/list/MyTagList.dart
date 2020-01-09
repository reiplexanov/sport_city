import 'package:flutter/material.dart';
import 'package:sportcity/components/My_Tag.dart';

class MyTagList extends StatefulWidget{
  
  MyTagList ({
  Key key, 
  }) : super (key:key);


  @override
  _MyTagList createState() => _MyTagList();
}

class _MyTagList extends State<MyTagList>{

  List<String> tag=[
    // 'assets/images/tag/tag1.png',
    // 'assets/images/tag/tag2.png',
    // 'assets/images/tag/tag3.png',
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
    // itemExtent:MediaQuery.of(context).size.height * 0.2,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context,index)=>My_Tag(
      name: 'items $index',
      img: tag[index],
    ),
    itemCount: tag.length,
   );
  }
}