import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportcity/authentication/bloc/authentication_bloc.dart';
import 'package:sportcity/authentication/bloc/index.dart';
import 'package:sportcity/authentication/user_repository.dart';
import 'package:sportcity/home/src/fovorite/MyFavorite.dart';
import 'package:sportcity/home/src/info/MyInfo.dart';
import 'package:sportcity/home/src/myPlatform/MyPlatform.dart';
import 'package:sportcity/home/src/programs/MyPrograms.dart';
import 'package:sportcity/home/src/trainer/MyTrainer.dart';
import 'package:sportcity/home/widgets/components/Buttom_List_tile.dart';

class MyDrawer extends StatelessWidget{

  final String name;
  final String image;

  MyDrawer ({
  Key key,
  @required this.name,
  @required this.image
  }) : super (key:key);

  UserRepository userRepository = UserRepository();

  @override
  Widget build(BuildContext context) {
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
                  child: Image.network(this.image)
                )
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child:Text(
                  this.name,
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
              BlocProvider.of<AuthenticationBloc>(context).add(
                LoggedOut(),
              );
            },
          )
        ],
      ),
    );
  }
}