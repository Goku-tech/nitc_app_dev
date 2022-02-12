import 'package:flutter/material.dart';
import 'package:nitc_qr_code_app/authentication/authenticate.dart';
import 'package:nitc_qr_code_app/screens/home.dart';
import 'package:nitc_qr_code_app/screens/loading.dart';
import 'package:nitc_qr_code_app/screens/sign_in.dart';

class WRAPPER extends StatefulWidget
{

  @override
  State<WRAPPER> createState() => _WRAPPERState();
}

class _WRAPPERState extends State<WRAPPER>
{
  @override
  Widget build(BuildContext context)
  {
    return StreamBuilder<String?>(stream:AUTH().user_status(),
                                  builder:(context,snapshot)
                                                              {
                                                                if(snapshot.connectionState==ConnectionState.active)
                                                                  {
                                                                      if(snapshot.data!=null)
                                                                        {
                                                                          return HOME(userid:snapshot.data!);
                                                                        }

                                                                      else
                                                                        {
                                                                          return sign_in();
                                                                        }
                                                                  }

                                                                else
                                                                  {
                                                                    return LOADING();
                                                                  }
                                                              }

                                  );
  }
}
