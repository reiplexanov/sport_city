import 'package:flutter/material.dart';
import 'package:sportcity/screens/info/components/InfoStaff.dart';
import 'package:sportcity/screens/info/components/StaffBox.dart';


/*
переделать в список  
*/

class MyInfo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final List<String> staff = ['rei','aska','ikari','onitzuka'];
    final List<String> staffpos = ['coder','disainer','derector','boss'];
    final List <String> image = [
    'https://sun9-27.userapi.com/c857324/v857324168/6c3e1/JfupH4fpPA0.jpg',
    'https://sun9-2.userapi.com/c855532/v855532515/5c367/2Zm_bEVaGo0.jpg',
    'https://sun9-22.userapi.com/c846524/v846524012/1f0046/UbzwgKwjvD8.jpg',
    'https://sun9-14.userapi.com/c851336/v851336448/1a5810/0NG0BB3fqZo.jpg'
    ];

    final screenSize = MediaQuery.of(context).size;
    final w = screenSize.width;
    final h = screenSize.height;

    return new Scaffold(
      appBar: new AppBar(
        title: Text('Информация о нас'),
      ),
      body:
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              width: w,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://sun9-57.userapi.com/c858520/v858520790/87f17/MzjZv6mD4kY.jpg'),
                  fit: BoxFit.fill
                )
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    'Sport City',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue
                    ),
                  ),
                  Text(
                  'Мы компания которая работает 10 лет по поиску спортивных площядок,вы получаите все спортивные площядки по вашему городу и информацию о них,наше приложение полностью бесплатное и без открытой рекламы , а так же вы можите найти информацию о различных тренажорах и занятия по ним '
                  ,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontStyle: FontStyle.italic
                  ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                  ),
                  Text(
                    'Наши сотрудники',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                    children: <Widget>[
                      StaffBox(
                        name: staff[0],
                        image: image[0],
                        onPressed: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (_) {
                            return InfoStaff(
                              name: staff[0],
                              staff: staffpos[0],
                              image: image[0],
                            );
                          }))
                        },
                        staffposition:  staffpos[0],
                        size: screenSize,
                      ),
                      StaffBox(
                        name: staff[1],
                        image: image[1],
                        staffposition: staffpos[1],
                        size: screenSize,
                        onPressed: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (_) {
                            return InfoStaff(
                              name: staff[1],
                              staff: staffpos[1],
                              image: image[1],
                            );
                          }))
                        },
                      ),
                      StaffBox(
                        name: staff[2],
                        image: image[2],
                        staffposition: staffpos[2],
                        size: screenSize,
                        onPressed: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (_) {
                            return InfoStaff(
                              name: staff[2],
                              staff: staffpos[2],
                              image: image[2],
                            );
                          }))
                        },
                      ),
                      StaffBox(
                        name: staff[3],
                        image: image[3],
                        staffposition: staffpos[3],
                        size: screenSize,
                        onPressed: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (_) {
                            return InfoStaff(
                              name: staff[3],
                              staff: staffpos[3],
                              image: image[3],
                            );
                          }))
                        },
                      )
                    ],
                  ),
                  ) 
                ],
              ),
            )
          ],
        ),
        ) 
    );
  }
}