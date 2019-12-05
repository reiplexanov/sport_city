import 'package:flutter/material.dart';
import 'package:sportcity/function/MyPushDate.dart';
import 'package:sportcity/screens/add/MyAdd.dart';
import 'package:sportcity/screens/home/components/MyDrawer.dart';
import 'package:sportcity/screens/home/list/Mylist.dart';
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
      print('data');
    });
  }

  @override
  Widget build(BuildContext context) {
     _updatedate();
        return new Scaffold(
          appBar: new AppBar(
            title: new Text('Sport Tymen'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.map),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>MyMpas())
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: (){
                  print('object');
                },
              )
            ],
          ),
          drawer: MyDrawer(name: user.getname(), image: user.getimage(),),
          floatingActionButton: new FloatingActionButton(
            onPressed:()=>{
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>MyAdd())
              )
            },
            child: Icon(Icons.add),
          ),
          body: MyList(),
    );
  }
}

