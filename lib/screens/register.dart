import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:nitc_qr_code_app/authentication/authenticate.dart';
import 'package:nitc_qr_code_app/custom_classes/decorations.dart';
import 'package:nitc_qr_code_app/screens/loading.dart';

class REGISTER extends StatefulWidget {
  @override
  _REGISTERState createState() => _REGISTERState();
}

class _REGISTERState extends State<REGISTER>
{
  final _key= GlobalKey<FormState>();
  String Email='';
  String Password='';
  bool loading=false;
  String invalid_text='';

  @override
  Widget build(BuildContext context)
  {
    return loading==true?LOADING():Scaffold
      (
        appBar:NewGradientAppBar(title:Text("WELCOME TO NITC",style:TextStyle(fontWeight:FontWeight.bold,letterSpacing:1.0)),
            centerTitle:true,
            bottomOpacity:0.0,
            gradient:LinearGradient(begin:Alignment.topLeft,end:Alignment.bottomRight,colors:[Colors.cyanAccent,/*Colors.deepPurpleAccent,Colors.pink,*/Colors.red]),

        ),
        body:Form (
            key:_key,
            child:Container(decoration:BoxDecoration(gradient:LinearGradient(begin:Alignment.topLeft,end:Alignment.bottomRight,stops:[0.10,0.20,0.50,0.70,0.95],colors:[Colors.cyanAccent,Colors.greenAccent,Colors.deepPurpleAccent,Colors.pink,Colors.red])),
              child: Center(
                child: Container(
                  width:MediaQuery.of(context).size.width/2,
                  child: Column(mainAxisAlignment:MainAxisAlignment.center,
                      children:[
                        TextFormField(onChanged:(email){Email=email;},validator:(email)=>email!.isEmpty?"Invalid Email":null,decoration:DECORATIONS().form_decorate().copyWith(hintText:"EMAIL",hintStyle:TextStyle(color:Colors.white,fontWeight:FontWeight.bold))),
                        SizedBox(height:5.0),
                        TextFormField(onChanged:(password){Password=password;},validator:(password)=>password!.length<6?"Password too short":null,obscureText:true,decoration:DECORATIONS().form_decorate().copyWith(hintText:"PASSWORD",hintStyle:TextStyle(color:Colors.white,fontWeight:FontWeight.bold))),
                        SizedBox(height:5.0),
                        ElevatedButton(onPressed:()async
                        {
                          if(_key.currentState!.validate()==true)
                          {
                            setState(() {
                              loading=true;
                            });
                            dynamic user_id=await AUTH().register_user(Email,Password);
                            if(user_id==null)
                            {
                              setState((){
                                loading=false;
                                invalid_text="Invalid Email/Password";
                              }
                              );
                            }

                            else
                              {
                                Navigator.pop(context);
                              }
                          }
                        },
                            style:ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.black87)),
                            child:Text("Register",style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,letterSpacing:2.0))
                        ),
                        Text(invalid_text,style:TextStyle(color:Colors.black87,fontWeight:FontWeight.bold,letterSpacing:2.0))


                      ]
                  ),
                ),
              ),
            )
        )
    );
  }
}


