import 'dart:async';
import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:sportcity/home/models/platfrom.dart';
import 'package:sqflite/sqflite.dart';



class UserRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  UserRepository({FirebaseAuth firebaseAuth, GoogleSignIn googleSignin})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignin ?? GoogleSignIn();
  // sing in on google servise
  Future<FirebaseUser> signInWithGoogle() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await _firebaseAuth.signInWithCredential(credential);
    return _firebaseAuth.currentUser();
  }
// authentication email passord
  Future<void> signInWithCredentials(String email, String password) {
    return _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
  // authentication email
  Future<void> signUp({String email, String password}) async {
    return await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
  //exit app
  Future<void> signOut() async {
    return Future.wait([
      _firebaseAuth.signOut(),
      _googleSignIn.signOut(),
    ]);
  }
  // verification on firebase 
  Future<bool> isSignedIn() async {
    final currentUser = await _firebaseAuth.currentUser();
    return currentUser != null;
  }
  // id google 
  Future<String> getUserId()async{
    return (await _firebaseAuth.currentUser()).uid.toString();
  }
  // name user on firebase
  Future<String> getUser() async {
    return (await _firebaseAuth.currentUser()).email.toString();
  }
  // image user
  Future<String> getImageUser() async {
    if ((await _firebaseAuth.currentUser()).photoUrl == null){
      return 'https://lh3.googleusercontent.com/a-/AAuE7mC_zoyH1m9FsZrRwFAZ4Gp0kmtMSAyClwh5N5p4Tw=s96-c';
    }
    return (await _firebaseAuth.currentUser()).photoUrl.toString();
  }
  // create jwt in backend reponse
  Future<String> getJwtToken() async{
    String id = (await _firebaseAuth.currentUser()).uid.toString();
    var url = 'http://192.168.0.103:8080/token/new/'+id;
    var response = await http.post(url);
    Map<String, dynamic> user = jsonDecode(response.body);
    print('token:${user["token"]}');
    
    /*
    create data base sqflite 
    */

    //  _fetchPosts();
    return user["token"];
  }  


  Future _fetchPosts() async {
    
    String token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVkIjp0cnVlLCJleHAiOjE1ODE5NDA3MjcsInVzZXJfaWQiOiJPb0Y4Sjh3ajMyZlhlVm1Dc3NHbHcwRWh1ZzMyIn0.3squq_je_jlGhCa_BdxRXbg6OujFkEOT4aderoxSqss";
    Map<String,String> hader = {"Authorization":token};
    final msg = jsonEncode({"start":0,"end":2});

    var response = await http.post('http://192.168.0.103:8080/lenta/news',headers:hader,body:msg);
    // List<dynamic> res = json.decode(response.body);

    // final res =  json.decode(response.body) as List;

    // print(res);
    final deresponse = json.decode(response.body);
    PlatformList platformList = PlatformList.fromJson(deresponse);
    print("platfrom ${platformList.platfrom[0].id}") ;


      // print(data);
      
  }
}