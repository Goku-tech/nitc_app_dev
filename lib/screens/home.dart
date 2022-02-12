import 'package:flutter/material.dart';
import 'package:nitc_qr_code_app/authentication/authenticate.dart';

class HOME extends StatefulWidget
{
  final String userid;

  HOME({required this.userid});

  @override
  _HOMEState createState() => _HOMEState();
}

class _HOMEState extends State<HOME>
{
  late String userid;
  @override
  Widget build(BuildContext context)
  {
    userid=widget.userid;

    return Scaffold(appBar:AppBar(title:Text("Welcome"),centerTitle:true,actions:[TextButton.icon(onPressed:(){AUTH().signout();}, icon:Icon(Icons.person,color:Colors.red[700]), label:Text("Sign out",style:TextStyle(color:Colors.red[700])))]));
  }
}
