import 'package:flutter/material.dart';

class MyInfoPlatform extends StatefulWidget {

  MyInfoPlatform({
    Key key, 
    this.info,
  }) : super(key:key);

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
    
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16
      ),
      child: Container(
        height: MediaQuery.of(context).size.height / 5,
        child: TextFormField(
        controller: _controller,
        maxLines: 8,
        minLines: 8,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 18
        ),
        keyboardType: TextInputType.multiline,
        // autofocus: true,
        decoration:
          InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: Colors.blue,
                width: 2.5,
              )
            ),
            labelText: 'Описание',
            labelStyle: TextStyle(color: Colors.blue ,fontSize: 25),
            filled: true,
            fillColor: Colors.white,
            counterText: "",
            contentPadding: EdgeInsets.fromLTRB(25.0, 25.0, 20.0, 10.0),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        ),
      ),
    ),
    ],
  );
  }
}