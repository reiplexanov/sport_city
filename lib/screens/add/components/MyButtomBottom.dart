import 'package:flutter/material.dart';

class MyButtomBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        width: MediaQuery.of(context).size.width - 32,
        child: FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
          ),
          color: Colors.blue,
          textColor: Colors.white,
          disabledColor: Colors.grey,
          disabledTextColor: Colors.black,
          padding: EdgeInsets.all(8.0),
          splashColor: Colors.blueAccent,
          onPressed: () {
            print('');
          },
          child: Text(
            "Готово",
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}