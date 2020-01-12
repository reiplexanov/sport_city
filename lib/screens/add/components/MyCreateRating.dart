import 'package:flutter/material.dart';

class MyCreateRating extends StatefulWidget{

  MyCreateRating({
    Key key
  }) : super(key:key);

  @override
  _MyCreateRating createState() => _MyCreateRating();

}

class _MyCreateRating extends State<MyCreateRating>{

  List<int> colors = [100,100,100,100,100];

  int j = 0;

  Future addStar(x) async{
    if(j < x ){
      for (int i = 0; i < x; i++){
      colors[i]=600;
      // print('add $x');
      j = x;
      }
    } 
  }

  Future deleteStar(x) async{
    print('deletestart$x');
     for (int i = 0; i <= 4; i++){
      colors[i]=100;
      // print('minus $i');
      j = 0;
    }
  }

  Future press(int x) async{
   
    deleteStar(x).then(
      (_)=>{
        addStar(x)
      }
    );

    setState(() {
      colors;
      j;
    });
  }

 /*
 сделать создание иконок цыклам  
 */

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
      Text(
        'оценка',
        style: TextStyle(color: Colors.blue,fontSize: 18),
      ),       
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          icon:Icon(Icons.star, color: Colors.blue[colors[0]],size: 36,),
          onPressed: ()=>{
            press(1)
          },
        ),
        IconButton(
          icon:Icon(
            Icons.star, 
            color: Colors.blue[colors[1]],
            size: 36,
          ),
          onPressed: ()=>{
            press(2)
          },
        ),
        IconButton(
          icon:Icon(Icons.star, color: Colors.blue[colors[2]],size: 36,),
          onPressed: ()=>{
            press(3)
          },
        ),
        IconButton(
          icon:Icon(Icons.star, color: Colors.blue[colors[3]],size: 36,),
          onPressed: ()=>{
            press(4)
          },
        ),
        IconButton(
          icon:Icon(Icons.star, color: Colors.blue[colors[4]],size: 36,),
          onPressed: ()=>{
            press(5)
          },
        ),
      ],
      )
      ],
    ); 
  }
}
