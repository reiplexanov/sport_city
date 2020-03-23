import 'package:flutter/material.dart';
import 'package:sportcity/home/src/add/components/MyButtomBottom.dart';
import 'package:sportcity/home/src/add/components/MyCreateRating.dart';
import 'package:sportcity/home/src/add/components/MyImageAndname.dart';
import 'package:sportcity/home/src/add/components/MyInfoPlatform.dart';
import 'package:sportcity/home/src/add/components/MyPickTag.dart';
import 'package:sportcity/home/src/add/components/MySetPlacePlatform.dart';



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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child:  MyimageAndName(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height *  0.2,
            child: MyInfoPlatform(
              info: '',
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child:MyPickTag(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
            child: MySetPlacePlatform(geo: 'Tymen:Motorostroiteli 12',),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.09,
            child:MyCreateRating(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.098,
            child: MyButtomBottom(),
          )
        ],
      ),
    );
  }
}

/* 

*/