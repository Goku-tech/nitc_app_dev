import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LOADING extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
                    backgroundColor:Colors.greenAccent,
                    body:Center(child: SpinKitWave(color:Colors.white,size:50.0))
                   );
  }
}
