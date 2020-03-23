import 'package:flutter/material.dart';
import 'package:sportcity/home/src/info/components/IconLabel.dart';


class InfoStaff extends StatefulWidget{

  InfoStaff ({
    Key key,this.name, 
    this.staff, 
    this.image
    }) : super (key:key);

  final String name;
  final String staff;
  final String image;

  @override
  _InfoStaff createState() => _InfoStaff();
}
class _InfoStaff extends State<InfoStaff> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: null,
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 86,
                    backgroundImage: NetworkImage(widget.image),
                  ),  
                  Column(
                    children: <Widget>[
                      IconLabel(label: 'Рей Плеханов',icons: Icons.account_circle,),
                      IconLabel(label: 'dfsdf@gmail.com',icons: Icons.mail,),
                      IconLabel(label: '79995486457',icons: Icons.phone,)
                    ],
                  )
                ],
              ),
              Text(
                'sdsfs',
                style: TextStyle(color: Colors.blue, fontSize: 16),
              )
            ],
          ),
        )
      )
    );
  }
}