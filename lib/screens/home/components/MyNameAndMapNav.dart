import 'package:flutter/material.dart';
import 'package:sportcity/screens/home/maps/MyMaps.dart';


class MyNameAndMapNav extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16,right: 16),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FittedBox(fit: BoxFit.fitWidth,
          child:
            Text(
              'Виды',
            style: TextStyle(color: Colors.blue,fontSize: 24),
            ),
          ),
          GestureDetector(
              onTap: ()=>{
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>MyMpas())
              )
            },
            child: FittedBox(fit: BoxFit.fitWidth,
              child:Text(
                'на карте',
                style: TextStyle(color: Colors.blue,fontSize: 18),
              ),
            ),
          )
        ],
      ) 
    );
  }
}