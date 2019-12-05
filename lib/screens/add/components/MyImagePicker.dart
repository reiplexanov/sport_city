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
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
            image: (
              DecorationImage(
                image:
                _image == null
                ? NetworkImage('https://sun9-7.userapi.com/c852032/v852032391/1c5c3d/VE_Ri-1DvkY.jpg')
                : FileImage(_image)
                , 
                fit: BoxFit.cover 
              )
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15.0)
            )
        ),
        child: IconButton(
            icon: new Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: getImage,
        ),
        alignment: Alignment(1.2,1.2),
      ),
    );
  }
}

