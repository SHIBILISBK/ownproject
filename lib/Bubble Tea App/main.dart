import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ownproject/Bubble%20Tea%20App/models/shop.dart';
import 'package:provider/provider.dart';

import 'Pages/HomePage.dart';

void main(){
  runApp(MyAppp());
}
class MyAppp extends StatelessWidget{
  MyAppp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BubbleTeaShop(),
      builder: (context,child) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.brown),
        home: HomePage(),
      ),
    );
  }

}