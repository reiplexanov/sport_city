
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportcity/home/blocs/Platform/index.dart';
import 'package:sportcity/home/widgets/MyBottomButtonBar.dart';
import 'package:sportcity/home/widgets/MyButtonBar.dart';
import 'package:sportcity/home/widgets/MyDrawer.dart';
import 'package:sportcity/home/widgets/MyList.dart';
import 'package:sportcity/home/widgets/MyNameAndMapNav.dart';
import 'package:sportcity/home/widgets/MyTagList.dart';


import 'blocs/TabPlatfrom/index.dart';
import 'models/platform_tab.dart';
import 'models/platfrom.dart';


class HomePage extends StatelessWidget {
  
  final String image;
  final String name;
  final String id;
  final String jwt;

  HomePage({
  Key key,
  @required this.name,
  @required this.image,
  @required this.id,
  @required this.jwt
  }) : super(key: key);

 

  @override
  Widget build(BuildContext context) {
      return BlocBuilder<PlatformBloc,PlatformState>(
        builder: (context,state){
          if (state is ErrorPlatformState){
            return Text('error');
          } else if (state is UnPlatformState){
            return Text("unPlatfrom");
          } else if ( state is InPlatformState){
            // state.platformList = List<Platfrom> ;
            // state.platformList.;
            return Scaffold(
              backgroundColor:  Color(0xfff2f2f2),
              drawer: MyDrawer(name: this.name, image: this.image,),
              appBar: AppBar(
                title: Text("Тюмень"),
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
                    height: MediaQuery.of(context).size.height * 0.48,
                    child:MyCardList(
                      //одавать список 
                      state: state,
                    )
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
      );
  }
}
/* 
 ;
*/