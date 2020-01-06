import 'package:flutter/material.dart';

class My_Tag extends StatefulWidget{

  final String name;
  final Image img;
  var pick = false;
  final Function onPressed;


  My_Tag({
    Key key,
    this.name,
    this.img,
    this.onPressed,
    this.pick,
  }) : assert(
    name.length >0
  ), super (key:key);

  @override
  _My_Tag createState() => _My_Tag();
}

class _My_Tag extends State<My_Tag>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Stack(
        children: <Widget>[
          Container(  
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.white
              ),
              borderRadius: BorderRadius.circular(15),
              image: (
                DecorationImage(
                  image: NetworkImage('https://sun9-9.userapi.com/c855228/v855228760/1bed5f/W_hUjAbNl_w.jpg'),
                  fit: BoxFit.cover
                )
              )
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              widget.name,
              style: TextStyle(color: Colors.white,fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}