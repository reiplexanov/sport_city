import 'package:flutter/material.dart';
import 'package:sportcity/components/My_Rating.dart';

class My_box extends StatelessWidget{
  
  final String title;
  final Function onPressed;
  final Image image;

  const My_box({
    Key key,
    @required this.title,
    @required this.image,
    @required this.onPressed,
  }) : assert (
    title.length>0,
  ), super (key : key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>{
        onPressed()
      },
      child: Padding(
      padding: EdgeInsets.only(left: 5,right: 5,),
      child: Container(
        width:  MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: (DecorationImage(
            image:NetworkImage('https://ksil72.ru/wp-content/uploads/2018/02/IMG_7545-723x591.jpg'),
            fit: BoxFit.cover
            )
          )
        ),
        // child:SizedBox(
        //   height: 64,
        //   child:FittedBox(
        //     fit: BoxFit.fitWidth ,
        //       child: Text(
        //       title,
        //       style: TextStyle(
        //         color: Colors.blue,
        //         fontSize: 12
        //       ),
        //       textAlign: TextAlign.center,
        //     ),
        //   ) 
        // ) 
        ),
      )
    );
  }
}