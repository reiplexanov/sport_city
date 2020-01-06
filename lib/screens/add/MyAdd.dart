import 'package:flutter/material.dart';
import 'package:sportcity/screens/add/components/MyCreateNameDate.dart';
import 'package:sportcity/screens/add/components/MyCreateRating.dart';
import 'package:sportcity/screens/add/components/MyImagePicker.dart';
import 'package:sportcity/screens/add/components/MyInfoPlatform.dart';
import 'package:sportcity/screens/add/components/MyPickTag.dart';
import 'package:sportcity/screens/add/components/MySetPlacePlatform.dart';



class MyAdd extends StatefulWidget{

  MyAdd({Key key}) : super (key: key);

  @override
  _MyAdd createState()=> new _MyAdd();
  
}


class _MyAdd extends State<MyAdd>{


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: new AppBar(
        title: Text('Добавление'),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
              padding: EdgeInsets.all(16),
                child: Row(
                children: <Widget>[
                  MyImagePicker(sizeScreen: MediaQuery.of(context).size),
                  MyCreateNameDate(
                    name: 'rei',
                    date: '09.09.2019 pm 9:19',
                    sizeScreen: MediaQuery.of(context).size,
                  ),
                ],
              ),
            ),
            MyInfoPlatform(
              info: '',
              sizeScreen: MediaQuery.of(context).size,
            ),
            // MySetPlacePlatform(geo: 'Tymen.vosto4ka',),
           
            ],
          ),
          MyPickTag(),
          MySetPlacePlatform(geo: 'Tymen:Motorostroiteli 12',),
          Column(children: <Widget>[
          Text(
            'оценка',
            style: TextStyle(color: Colors.blue,fontSize: 18),
          ),
          MyCreateRating(),
          
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              width: MediaQuery.of(context).size.width - 32,
              height: 60,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(30.0),
                ),
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
                  "Готово",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          )
            ],
          ),
        ],
      ),
    );
  }

}

/* 

*/