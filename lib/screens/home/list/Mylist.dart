import 'package:flutter/material.dart';
import 'package:sportcity/components/My_box.dart';

class MyList extends StatefulWidget{
  
  MyList ({
  Key key, 
  this.idUser,
  this.screenSize,
  }) : super (key:key);

  final int idUser;
  final screenSize;

  @override
  _MyList createState() => _MyList();
}

class _MyList extends State<MyList>{

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GridView.count(
            primary: false,
            childAspectRatio:((MediaQuery.of(context).size.width / 2) / (MediaQuery.of(context).size.height / 2.45)),
            crossAxisCount: 2,
            children: List.generate(15, (index) {
              return Center(
                child: My_box(
                  onPressed:  ()=>{
                    print('erw $index')
                  },
                  title: 'sadad',
                  image: Image.network(''),
                )
              );
            }
          ),
        )
      ],
    );
  }
}