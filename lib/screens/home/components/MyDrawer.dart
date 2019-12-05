import 'package:flutter/material.dart';
import 'package:sportcity/components/Buttom_List_tile.dart';
import 'package:sportcity/screens/fovorite/MyFavorite.dart';
import 'package:sportcity/screens/info/MyInfo.dart';
import 'package:sportcity/screens/myPlatform/MyPlatform.dart';
import 'package:sportcity/screens/programs/MyPrograms.dart';
import 'package:sportcity/screens/trainer/MyTrainer.dart';
import 'package:sportcity/utils/firebase_auth.dart';

class MyDrawer extends StatefulWidget{
  
  MyDrawer ({Key key,this.name,this.image}) : super (key:key);

  final String name;
  final String image;

  @override
  _MyDrawer createState() => new _MyDrawer();  
}

class _MyDrawer extends State<MyDrawer>{


  AuthProvider user = AuthProvider();

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final w = screenSize.width;
    final h = screenSize.height;

    print(w);
    print(h);

    return new Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    CircleAvatar(
                      radius: 48,
                      child: ClipOval(
                        child: Image.network(widget.image),
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child:Text(
                        widget.name,
                        style: TextStyle(color: Colors.white,fontSize: 18),
                      ),
                    )
                  ],),
                  decoration: BoxDecoration(color: Colors.blue),
                ),
                Buttom_List_tile(
                  title: 'Мои площадки',
                  icon: Icons.flag,
                  onPressd: ()=>{
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>MyPlatform())
                  )
                  }
                ),
                Buttom_List_tile(
                  title: 'Избранное',
                  icon: Icons.favorite,
                  onPressd: ()=>{
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>MyFavorite())
                  )
                  },
                ),
                Buttom_List_tile(
                  title: 'Тренажеры',
                  icon: Icons.fitness_center,
                  onPressd: ()=>{
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>MyTrainer())
                  )
                  },
                ),
                Buttom_List_tile(
                  title: 'Программы',
                  icon: Icons.assignment,
                  onPressd: ()=>{
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>MyPrograms())
                  )
                  },
                ),
                Container(
                  height: 1.5,
                  color: Colors.grey[200],
                ),
                Buttom_List_tile(
                  title: 'О нас',
                  icon: Icons.info,
                  onPressd: ()=>{
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>MyInfo())
                  )
                  },
                ),
                Buttom_List_tile(
                  title: 'Выход',
                  icon: Icons.exit_to_app,
                  onPressd: (){
                    user.logOut();
                  },
                )
              ],
      ),
    );
  }
}