import 'package:flutter/material.dart';

class MyInfoPlatform extends StatefulWidget {

  MyInfoPlatform({
    Key key, 
    this.info,
    this.sizeScreen
  }) : super(key:key);

  final sizeScreen;
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
    /*
    хуйня не работает как надо 
    */

    // String text = _controller.text;
    // this.tag = '';
    // for (int i = 0;i< text.length;i++ ){
    //     if (text[i] == '#'){
    //       print(this.tag);
    //       this.tag = this.tag + text.substring(text.indexOf('#',i),text.indexOf(' ',i)) + ' ';
    //     }
    // }
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
        height: widget.sizeScreen.height / 5,
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
                width: 1.5,
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