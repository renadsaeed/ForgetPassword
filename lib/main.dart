

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:projectt/forgetmail.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   String  email = '';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(

       backgroundColor: Color(0xffdce0e3),
    appBar: AppBar(
       backgroundColor: Color(0xffa2bed5),
      title:Center(
        child:  Text("Forget Password",style: TextStyle(color: Color(0xFF2B475E),fontWeight: FontWeight.bold),),
        
        ),
        

    ),
     body:Column(

      children: [
         Center(
          child: Padding(padding: EdgeInsets.only(top: 30),
         child:  Container(
           
            child: Text("Find your Account",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold,color: Color(0xFF2B475E)),textAlign: TextAlign.center,),
          ),
          ),
         ),
           Center(
            
      child:Container(
            
            child: Text("Enter your gmail account",style: TextStyle(fontSize: 20,color: Color(0xFF2B475E)),textAlign: TextAlign.center,),
          ),
             ),

          const ForgetMail(),
                  
      ],
     )
      )
     
    );
  }
}

