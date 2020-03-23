import 'package:flutter/material.dart';

class My_Card extends StatelessWidget{

  final String title;
  final Function onPressed;
  final String image;
  final String body;

  const My_Card({
    Key key,
    @required this.image,
    @required this.title,
    @required this.body,
    @required this.onPressed,
  }) : assert ( 
    title.length > 0,
    body.length > 0,
  ), super (key : key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Card(
        color: Colors.blue,
        child: ListTile(
          leading: CircleAvatar(
            radius: 24,
            backgroundImage:
              NetworkImage(image),
          ),
          title: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
              body,
              style: TextStyle(color: Colors.white),
          ),
          onTap: ()=> {
            onPressed()
          },
        )
      ),
    );
  }
}
