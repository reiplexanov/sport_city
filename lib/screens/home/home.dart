import 'package:flutter/material.dart';

import 'package:sportcity/screens/home/components/MyBottomButtonBar.dart';
import 'package:sportcity/screens/home/components/MyButtonBar.dart';
import 'package:sportcity/screens/home/components/MyDrawer.dart';
import 'package:sportcity/screens/home/components/MyNameAndMapNav.dart';
import 'package:sportcity/screens/home/list/MyCardList.dart';
import 'package:sportcity/screens/home/list/MyTagList.dart';
import 'package:sportcity/screens/home/maps/MyMaps.dart';
import 'package:sportcity/utils/firebase_auth.dart';

class HomePage extends StatefulWidget{
  HomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<HomePage>  {

  AuthProvider user = AuthProvider();

  @override
  void initState() {
    super.initState();
    user.setname();
    user.setimage();
  }

  _updatedate()async{
    if (user.getname() != 'name') return;
    await new Future.delayed(Duration(seconds: 1));
    setState(() {
      // print('data');
    });
  }

  @override
  Widget build(BuildContext context) {
     _updatedate();
        return new Scaffold(
          backgroundColor:  Color(0xfff2f2f2),
          drawer: MyDrawer(name: user.getname(), image: user.getimage(),),
          appBar: AppBar(
            title: Text("Тюмень"),
            actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.map,
                  color: Colors.blue,
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>MyMpas())
                  );
                },
              ),
            ],
          ),
          body: ListView(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              child:MyNameAndMapNav(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child:MyTagList(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.009,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width:  MediaQuery.of(context).size.width,
              child: MyButtonBar(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.009,
            ),
            SizedBox (
              height: MediaQuery.of(context).size.height * 0.5,
              child: MyCardList(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.009,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              child: MyBottomButtonBar(),
            ),
          ],
        ),
    );
  }
}
