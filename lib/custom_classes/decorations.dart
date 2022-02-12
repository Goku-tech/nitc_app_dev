import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class DECORATIONS
{
  InputDecoration form_decorate()
  {
    return InputDecoration(errorStyle:TextStyle(color:Colors.black87,fontWeight:FontWeight.bold,fontSize:15.0),
                            filled:true,
                            enabledBorder:OutlineInputBorder(borderSide:BorderSide(color:Colors.black87,width:2.0),borderRadius:BorderRadius.circular(2.0)),
                            focusedBorder:OutlineInputBorder(borderSide:BorderSide(color:Colors.red.shade700,width:2.0),borderRadius:BorderRadius.circular(2.0))

                          );
  }
}