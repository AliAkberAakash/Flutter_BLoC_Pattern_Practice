import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(
          height: 100,
          width: 100,
          child: Image.asset("assets/chair1.jpg"),
        ),
        Text('Chair'),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {

          },
        ),
      ],
    );

  }
  
}