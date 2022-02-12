import 'package:flutter/material.dart';
import 'package:nitc_qr_code_app/screens/loading.dart';
import 'package:nitc_qr_code_app/screens/register.dart';
import 'package:nitc_qr_code_app/screens/sign_in.dart';
import 'package:nitc_qr_code_app/wrapper/wrapper.dart';

void main()
{
  runApp(MaterialApp(
                      theme:ThemeData(brightness:Brightness.light,primaryColor:Colors.cyanAccent),
                      routes:{
                                '/':(context)=>WRAPPER(),
                                '/register':(context)=>REGISTER(),
                                '/signin':(context)=>sign_in(),
                                '/loading':(context)=>LOADING()
                              }
                    )

  );
}



