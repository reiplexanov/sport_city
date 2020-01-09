import 'package:flutter/material.dart';
import 'package:sportcity/components/My_box.dart';
import 'package:sportcity/screens/home/list/MyTagList.dart';

class MyCardList extends StatefulWidget{
  
  MyCardList ({
  Key key, 
  }) : super (key:key);

  @override
  _MyCardList createState() => _MyCardList();
}

class _MyCardList extends State<MyCardList>{

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      scrollDirection: Axis.horizontal,
      itemBuilder: (context,index)=>My_box(
        onPressed: ()=>{
          print('asdasd')
        },
        title: 'title $index', 
      ),
      itemCount: 15,  
    ); 
  }
}