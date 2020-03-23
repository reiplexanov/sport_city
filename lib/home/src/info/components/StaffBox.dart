import 'package:flutter/material.dart';

class StaffBox extends StatelessWidget{

  final size;
  final String name;
  final String staffposition;
  final String image;
  final Function onPressed; 

  const StaffBox({
    Key key,
    @required this.size,
    @required this.name,
    @required this.image,
    @required this.staffposition,
    @required this.onPressed,
  }) : assert (
    name.length > 0,
    image.length > 0,
  ), super(key : key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    
    final w = size.width;
    final h = size.height;

    return Padding(
      padding: EdgeInsets.all(10),
      child: GestureDetector(
        onTap: ()=>{
          onPressed()
        },
        child: Container(
          alignment: Alignment(0,1.0),
          width: (w / 100) * 35,
          height: (h / 100) * 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0)
            ),
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.fill
            )
          ),
          child: Text(
            '$name $staffposition',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontStyle: FontStyle.italic
            ),
          ),
        ),
      )
    );
  }
}