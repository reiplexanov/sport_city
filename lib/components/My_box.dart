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
      padding: EdgeInsets.all(5),
      child: Container(
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height / 2.45,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.5,
          color: Colors.blue,
        ),
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
      BoxShadow(
        color: Colors.grey[300],
        blurRadius: 15.0, // has the effect of softening the shadow
        spreadRadius: 1.0, // has the effect of extending the shadow
        offset: Offset(
          10.0, // horizontal, move right 10
          10.0, // vertical, move down 10
        ),
      )
    ],
        image: (DecorationImage(
          image:NetworkImage('https://ksil72.ru/wp-content/uploads/2018/02/IMG_7545-723x591.jpg'),
          fit: BoxFit.cover
        )
      )
      ),
      child: Stack(
        // crossAxisAlignment: CrossAxisAlignment.,
        children: <Widget>[
          Container(
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(
                topLeft:Radius.circular(15.0),
                topRight:Radius.circular(15.0))
             ),
            // color: Colors.white,
            width:  MediaQuery.of(context).size.width / 2,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24
              ),
              textAlign: TextAlign.center,
            ),
          ),
          
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft:Radius.circular(15.0),
                    bottomRight:Radius.circular(15.0)
                  )
                ),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                        My_Rating(start: 1,),
                        Icon(Icons.favorite_border,color: Colors.blue[500],),
                      ],
                    ),
                  ) 
                )
              )
            ],
          ),
        )
      )
    );
  }
}