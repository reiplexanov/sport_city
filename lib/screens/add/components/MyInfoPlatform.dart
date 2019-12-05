import 'package:flutter/material.dart';

class MyInfoPlatform extends StatefulWidget {


  @override
  _MyInfoPlatform createState() => _MyInfoPlatform();
}

class _MyInfoPlatform extends State<MyInfoPlatform>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10,
        right: 10
      ),
      child: Container(
        child: TextFormField(
        maxLines: 6,
        minLines: 6,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 18
        ),
        keyboardType: TextInputType.multiline,
        // textAlign: TextAlign.center,
        autofocus: true,
        initialValue: '',
        decoration:
          InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: Colors.blue,
                width: 1.5,
              )
            ),
            labelText: 'Описание',
            labelStyle: TextStyle(color: Colors.blue ,fontSize: 25),
            filled: true,
            fillColor: Colors.white,
            // hintStyle: TextStyle(color: Colors.blue),
            // hintText: 'Описание',
            counterText: "",
            contentPadding: EdgeInsets.fromLTRB(25.0, 25.0, 20.0, 10.0),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        ),
      ),
    );
  }
}