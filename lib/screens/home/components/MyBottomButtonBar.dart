import 'package:flutter/material.dart';
import 'package:sportcity/screens/add/MyAdd.dart';

class MyBottomButtonBar extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Container(
          // color: Colors.blue,
          width: MediaQuery.of(context).size.width,
          height: 55,
          child: Row(
            children: <Widget>[
              Container(
                width: (MediaQuery.of(context).size.width - 38) * 0.87,
                color:Colors.transparent,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.text,
                  initialValue: '',
                  decoration: 
                    InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 1.5,
                        )
                      ),
                      filled: true,
                      fillColor: Colors.blue,
                      hintStyle: TextStyle(color: Colors.white),
                      hintText: 'Название',
                      counterText: "",
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                    ),
                  ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: (MediaQuery.of(context).size.width - 32) * 0.13,
                child: FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>MyAdd())
                    )
                  },
                ),
              )
            ],
          ),
        ),
      )
    );
  }  
}