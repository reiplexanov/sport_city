import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class MyImagePicker extends StatefulWidget{

  MyImagePicker({Key key,this.sizeScreen}):super(key:key);

  final sizeScreen;

  @override
  _MyImagePicker createState() => _MyImagePicker();
}

class  _MyImagePicker extends State<MyImagePicker> {
  
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>{
        getImage()
      },
      child: Container(
        width: widget.sizeScreen.width / 2 - 48,
        height: widget.sizeScreen.height * 0.2,
        decoration: BoxDecoration(
            image: (
              DecorationImage(
                image:
                _image == null
                ? ExactAssetImage('assets/images/add/addphoto2.png')
                : FileImage(_image), 
                fit: BoxFit.cover 
              )
            ),
            border: Border.all(
              width: 3.5,
              color: Colors.blue
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15.0)
            )
        ),
        child: null
      ),
    );
  }
}

