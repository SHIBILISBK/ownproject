import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){},
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        minimumSize: Size(450, 70),
      ),
      child: Text(      "Log in"      ,
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold
      ),
      ),
      );
  }
}
