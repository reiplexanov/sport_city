import 'package:flutter/material.dart';

class My_Tag extends StatefulWidget{

  final String name;
  final String img;
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
      padding: EdgeInsets.only(left: 5,right: 5),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
              width: 2.5,
              color: Colors.white
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child:Column(
              children: <Widget>[
               SizedBox(
                 height:(MediaQuery.of(context).size.height * 0.2) * 0.9 -5 ,
                 child: Container(
              decoration: BoxDecoration(
                image: (
                  DecorationImage(
                    image: new AssetImage(widget.img),
                    fit: BoxFit.cover
                  )
                )
              ),
                 )
               ), 
               SizedBox(
                 height: (MediaQuery.of(context).size.height * 0.2)*0.1,
                 child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child:
                   Text(
                    widget.name,
                    style: TextStyle(color: Colors.blue,fontSize: 18),
                  ),
                ),
               )
              ],
            ) 
      )
  
    );
  }
}