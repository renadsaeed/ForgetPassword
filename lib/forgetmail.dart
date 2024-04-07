import 'dart:html';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetMail extends StatefulWidget
{
  const ForgetMail({super.key});

  @override
  State<ForgetMail> createState() => _ForgetMail();

  
}

class _ForgetMail extends State<ForgetMail>  {
  String email = '';
   TextEditingController emailcontrol = TextEditingController();
  String get gemail
   {
    return email;
   }
    validateEmail()
  {
   final bool isvalid = EmailValidator.validate(email);
   if(isvalid)
   {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Valid Email')),
    );
   }else{
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Not a Valid Email')),
    );
   }
  }
  @override
  Widget build(BuildContext context) {
   return Center(
                  child:Column(
                    children: [

                   Padding(
                    padding: EdgeInsets.only(top: 75),
                    child: Container(
                      alignment: Alignment.center,
                      width: 270,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: TextFormField(
                        textInputAction: TextInputAction.done,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        
                        cursorColor: Colors.white,
                        autofocus: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter your mail',
                            hintStyle: TextStyle(
                              color: email.isEmpty
                                  ? Color(0XFFE8C6C6)
                                  : Colors.white,
                            ),
                            prefixIcon: const Icon(
                              Icons.attach_email_outlined,
                              color: Color(0xFF2B475E),
                            ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) {
                              email = value ;
                            },
                      ),
                    ),
                  ),
                  Center(
    child:   Padding(
     padding: EdgeInsets.only(top: 50),
  child:  TextButton(
    
    onPressed: () => validateEmail()  ,
    
    child: Container(

     alignment: Alignment.center,
     height: 50,
     width: 250,
     decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 8),
          child: const Text(
            "Sent Email",
            style: TextStyle(
              fontSize: 24,
              fontWeight:FontWeight.bold,
              color: Color(0xFF2B475E),
            )
          ),
        ),
      const Icon(
        Icons.arrow_forward,
        color: Colors.black,
      )
      ],
    )
   )
   )
   )
   ),
                    ],
                ),
   );
  }
}