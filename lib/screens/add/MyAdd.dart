import 'package:flutter/material.dart';
import 'package:sportcity/screens/add/components/MyCreateNameDate.dart';
import 'package:sportcity/screens/add/components/MyImagePicker.dart';
import 'package:sportcity/screens/add/components/MyInfoPlatform.dart';
import 'package:sportcity/screens/add/components/MySetPlacePlatform.dart';
import 'package:sportcity/screens/add/components/MyTag.dart';


class MyAdd extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: new AppBar(
        title: Text('Добавление'),
      ),
      body:  Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              MyImagePicker(),
              MyCreateNameDate(name: 'rei',date: '09.09.2019 pm 9:19',),
            ],
          ),
          MyInfoPlatform(),
          MyTag(tag: 'sadsad',),
          MySetPlacePlatform(geo: 'Tymen.vosto4ka',),
          SizedBox(height: 150,),
          FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.blueAccent,
            onPressed: () {
              print('object');
            },
            child: Text(
              "Flat Button",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}