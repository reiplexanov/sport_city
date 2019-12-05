import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyPushDate {

  Future<void> sendDatePlatform(namePlatfom,time,geo,info,tag,image) async{
  final FirebaseUser userT = await FirebaseAuth.instance.currentUser();
  return Firestore.instance.collection('platforms').document(userT.displayName)
  .setData({ 
    'name':userT.displayName,
    'time':time,
    'NamePlatform':namePlatfom,
    'geo':geo,
    'info':info,
    'tag':tag,
    'Image':image
   });
  }
}