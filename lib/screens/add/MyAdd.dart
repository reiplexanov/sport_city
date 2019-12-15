import 'package:flutter/material.dart';
import 'package:sportcity/screens/add/components/MyCreateNameDate.dart';
import 'package:sportcity/screens/add/components/MyImagePicker.dart';
import 'package:sportcity/screens/add/components/MyInfoPlatform.dart';
import 'package:sportcity/screens/add/components/MySetPlacePlatform.dart';
import 'package:sportcity/screens/add/components/MyTag.dart';


class MyAdd extends StatefulWidget{

  MyAdd({Key key}) : super (key: key);

  @override
  _MyAdd createState()=> new _MyAdd();
  
}


class _MyAdd extends State<MyAdd>{

  String tag ='';

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
          MyInfoPlatform(info: tag,),
          // MyTag(tag:tag,),
          MySetPlacePlatform(geo: 'Tymen.vosto4ka',),
          SizedBox(height: 125,),
          FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.blueAccent,
            onPressed: () {
              print('');
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

/* 

*/