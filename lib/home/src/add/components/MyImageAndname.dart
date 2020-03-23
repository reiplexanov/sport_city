import 'package:flutter/material.dart';
import 'package:sportcity/home/src/add/components/MyCreateNameDate.dart';
import 'package:sportcity/home/src/add/components/MyImagePicker.dart';


class MyimageAndName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(16),
        child: Row(
        children: <Widget>[
          MyImagePicker(),
          MyCreateNameDate(
            name: 'rei',
            date: '09.09.2019 pm 9:19',
          ),
        ],
      ),
    );
  }
}