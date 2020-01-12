import 'package:flutter/material.dart';


class MyCreateNameDate extends StatefulWidget{

  MyCreateNameDate ({
    Key key,
    this.name,
    this.sizeScreen,
    this.date,
    }) : super (key:key);

  final sizeScreen;
  final String name;
  final String date;

  @override
  _MyCreateNameDate createState() => _MyCreateNameDate();
}
class _MyCreateNameDate extends State<MyCreateNameDate> {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(0),
      child: Container(
        width:  MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.height * 0.2,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Создано ${widget.name}',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5,
              bottom: 8,
              left: 5,
              right: 5,
            ),
            child: TextFormField(
              style: TextStyle(color: Colors.blue),
              keyboardType: TextInputType.text,
              textAlign: TextAlign.center,
              // autofocus: true,
              initialValue: '',
              decoration: 
                InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2.5,
                    )
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintStyle: TextStyle(color: Colors.blue),
                  hintText: 'Название',
                  counterText: "",
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                ),
              ),
            ),
            Text(
              'Дата ${widget.date}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue
              ),
            )
          ],
        ),
      ),
    );
  }
}