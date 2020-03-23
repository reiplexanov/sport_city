import 'package:flutter/material.dart';

class Buttom_List_tile extends StatelessWidget{
  final IconData icon;
  final Function onPressd;
  final String title;

  const Buttom_List_tile({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.onPressd,
  }) : assert ( title.length >0 ),
  super (key : key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: Colors.blue, fontSize: 14),
      ),
      leading: Icon(
      icon,
      color: Colors.blue,
      ),
      onTap: ()=>{
        onPressd()
      },
    );
  }
}