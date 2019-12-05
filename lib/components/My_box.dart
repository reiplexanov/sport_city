import 'package:flutter/material.dart';

class My_box extends StatelessWidget{
  
  final String title;
  final Function onPressed;
  final Image image;

  const My_box({
    Key key,
    @required this.title,
    @required this.image,
    @required this.onPressed,
  }) : assert (
    title.length>0,
  ), super (key : key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        image: (DecorationImage(
          image:NetworkImage('https://sun9-32.userapi.com/c857532/v857532711/f7699/1jcKSf8-vcE.jpg'),
          fit: BoxFit.cover
        )
        )
      ),
      child: Row(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          Icon(
            Icons.favorite_border,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}