import 'package:flutter/material.dart';

class My_Rating extends StatelessWidget{

  final int start;

  const My_Rating({
    Key key,
    @required this.start,
  }) :  super (key : key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.blue[500]),
        Icon(Icons.star, color: Colors.blue[500]),
        Icon(Icons.star, color: Colors.blue[100]),
        Icon(Icons.star, color: Colors.blue[100]),
        Icon(Icons.star, color: Colors.blue[100]),
      ],
    );
  }
}