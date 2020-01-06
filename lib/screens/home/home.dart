import 'package:flutter/material.dart';
import 'package:sportcity/components/My_Tag.dart';
import 'package:sportcity/components/My_box.dart';
import 'package:sportcity/screens/home/components/MyBottomButtonBar.dart';
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
      // print('data');
    });
  }

  @override
  Widget build(BuildContext context) {
     _updatedate();
        return new Scaffold(
          drawer: MyDrawer(name: user.getname(), image: user.getimage(),),
          body:Stack(
            children: <Widget>[
            CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                iconTheme: new IconThemeData(color: Colors.blue),
                backgroundColor: Colors.transparent,
                title: Text(
                  'Тюмень',
                  style: TextStyle(color: Colors.blue),
                ),
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
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 150,
                  child: ListView.builder(
                    itemExtent: 150,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)=>My_Tag(
                      name: 'items $index'
                    ),
                    itemCount: 5,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                  child: Container(
                    margin:const EdgeInsets.only(bottom: 5, top: 5), 
                    // color: Colors,
                    // height:2,
                  )
                ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context,index)=>My_box(
                  onPressed:  ()=>{
                    print('erw $index')
                  },
                  title: 'sadad',
                  image: Image.network(''),
                )
                ),
              ),
              
            ],
          ),
          MyBottomButtonBar(),
            ],
          )
    );
  }
}
