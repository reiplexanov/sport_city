import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportcity/home/blocs/FilteredPlatform/index.dart';
import 'package:sportcity/home/blocs/blocs.dart';
import 'package:sportcity/home/models/platform_tab.dart';

class MyButtonBar extends StatelessWidget{

  final PlatformTab activeTab;
  final Function(PlatformTab) onTabSelected;

 MyButtonBar({
  Key key,
  @required this.activeTab,
  @required this.onTabSelected,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only( left: 16,right: 16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15.0)
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              child:  FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                // color: Colors.blue,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                splashColor: Colors.blueAccent,
                onPressed: () {
                  // BlocProvider.of<FilteredPlatformBloc>(context).state.props.);
                },
                child:FittedBox(fit: BoxFit.fitWidth,
                  child:Text(
                  'Ближашие',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                  ),
                ),
 
              ),
            ),
            Container(
              child:  FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                // color: Colors.blue,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                splashColor: Colors.blueAccent,
                onPressed: () {
                  print('');
                },
                child: FittedBox(fit: BoxFit.fitWidth,
                  child:Text(
                  'По дате',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                  ),
                ), 
              ),
            ),
            Container(
              child:  FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                // color: Colors.blue,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                splashColor: Colors.blueAccent,
                onPressed: () {
                  print('');
                },
                child: FittedBox(fit: BoxFit.fitWidth,
                  child:Text(
                  'Лучшее',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                  ),
                ), 
              ),
            )
          ],
        ),
      ),
    );
  }
}