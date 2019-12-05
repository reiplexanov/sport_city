import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class AuthProvider {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  
  Future<void> logOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print("error logging out");
    }
  }

  var _user = '';
  var _image_user ='';

  setimage() async {
    _image_user ='name';
    final FirebaseUser userT = await FirebaseAuth.instance.currentUser();
    return Future.delayed(Duration(seconds: 1), ()=> _image_user = userT.photoUrl.toString());
  }
  getimage(){
    return _image_user;
  }


  setname() async {
    _user ='name';
    final FirebaseUser userT = await FirebaseAuth.instance.currentUser();
    return Future.delayed(Duration(seconds: 1), ()=> _user = userT.displayName.toString());
  }

  getname(){
    return _user;
  }

  sendDataName(){
    var name = _user;
    Firestore.instance.collection('users').document(name)
    .setData({ 'id':1,'role':'admin' });
  }
 
    

  Future<bool> loginWithGoogle() async {
    try {
      GoogleSignIn googleSignIn = GoogleSignIn();
      GoogleSignInAccount account = await googleSignIn.signIn();
      if(account == null )
        return false;
      AuthResult res = await _auth.signInWithCredential(GoogleAuthProvider.getCredential(
        idToken: (await account.authentication).idToken,
        accessToken: (await account.authentication).accessToken,
      ));
      if(res.user == null)
        return false;
      return true;
    } catch (e) {
      print("Error logging with google");
      return false;
    }
  }
}