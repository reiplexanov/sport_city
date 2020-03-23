import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class MyImagePicker extends StatefulWidget{


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
        width: MediaQuery.of(context).size.width / 2.5,
        height:MediaQuery.of(context).size.width / 2.5,
        decoration: BoxDecoration(
            image: (
              DecorationImage(
                image:
                _image == null
                ? ExactAssetImage('assets/images/add/addphoto2.png')
                : FileImage(_image), 
                fit: BoxFit.fill 
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

