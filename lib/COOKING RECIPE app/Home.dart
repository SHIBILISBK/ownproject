import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_to_act/slide_to_act.dart';

import 'Singup and Login/Login/Login.dart';

void main(){
  runApp(MaterialApp(home: Yummy(),debugShowCheckedModeBanner: false,));
}
class Yummy extends StatefulWidget{
  @override
  State<Yummy> createState() => _YummyState();
}

class _YummyState extends State<Yummy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image:
              NetworkImage("https://images.unsplash.com/photo-1611588275568-72ecc1a502d1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzk1fHxjb29raW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"))
        ),
        child:Column(
          children: [
            Center(child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Text("yummy",style: GoogleFonts.homemadeApple(textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.white)),),
            )),
            Padding(padding: EdgeInsets.only(top: 350),
            child: Padding(
              padding: const EdgeInsets.only(left: 100,right: 100),
              child: SlideAction(
                borderRadius: 12,
                elevation: 0,
                outerColor: Colors.black,
                sliderButtonIcon: Icon(Icons.send_outlined),
                text: "Get Start",
                onSubmit: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                },
              ),
            ),
            )

          ],
        ),
      ),
    );
  }
}