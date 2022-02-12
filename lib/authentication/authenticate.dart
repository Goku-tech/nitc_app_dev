import 'package:firebase_auth/firebase_auth.dart';


class AUTH
{
  final FirebaseAuth _user= FirebaseAuth.instance;

  Future sign_in_with_email_password(String email,String password) async
  {
    try
    {
      AuthResult result=await _user.signInWithEmailAndPassword(email:email, password:password);
      FirebaseUser user=result.user;

      return user!=null?user.uid:null;

    }


    catch(e)
    {
      print("Sign In Error Occured:$e");
      return null;
    }
  }


  Future register_user(String email,String password) async
  {
    try
    {
      AuthResult result=await _user.createUserWithEmailAndPassword(email:email,password:password);
      FirebaseUser user=result.user;

      return user.uid;

    }

    catch(e)
    {
      print("Registration Error ocurred");
      return null;

    }
  }

  Future signout() async
  {
      await _user.signOut();
  }

  Stream<String?> user_status()
  {
    return _user.onAuthStateChanged.map((FirebaseUser? userDetails)=>userDetails?.uid);
  }


}