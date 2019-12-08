import 'package:flutter/material.dart';
import 'package:sportcity/function/MyChangeTag.dart';

class MyInfoPlatform extends StatefulWidget {

  MyInfoPlatform({Key key, this.info}) : super(key:key);

  String info;

  @override
  _MyInfoPlatform createState() => _MyInfoPlatform();
}

class _MyInfoPlatform extends State<MyInfoPlatform>{

  final _controller = TextEditingController();

  String tag = '';

  void initState(){
    super.initState();
    
    _controller.addListener(changeText);
  }

  void dispose() {
  _controller.dispose();
  super.dispose();
  }

  changeText(){

    String text = _controller.text;
    this.tag = '';
    for (int i = 0;i< text.length;i++ ){
        if (text[i] == '#' ){
          this.tag = this.tag + text.substring(text.indexOf('#',i),text.indexOf(' ',i)) + ' ';
        }
       // print(' tag = '+tag.replaceAll('#', ''));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
      padding: EdgeInsets.only(
        left: 10,
        right: 10
      ),
      child: Container(
        child: TextFormField(
        controller: _controller,
        maxLines: 6,
        minLines: 6,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 18
        ),
        keyboardType: TextInputType.multiline,
        // textAlign: TextAlign.center,
        autofocus: true,
        // initialValue: '',
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
    ),
    Text(
      'my tag: $tag'
    )
    ],
  );
  }
}