import 'package:flutter/material.dart';
import 'package:sportcity/home/widgets/components/My_box.dart';



class MyPrograms extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Программы'),
      ),
      body:GridView.count(
        crossAxisCount: 2,
        children: List.generate(100, (index) {
          return Center(
            child: My_box(title: 'sadad',)
          );
        }),
      )
    );
  }
}


/* 
Column(
        children: <Widget>[
          My_Card(
            title: 'qeqw',
            body: 'wqee',
            image:'https://sun9-32.userapi.com/c857532/v857532711/f7699/1jcKSf8-vcE.jpg',
            onPressed: ()=>{
              print('object')
            },
          )
        ],
      )


*/