import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sportcity/home/models/platfrom.dart';
import 'package:sqflite/sqflite.dart';


class ApiProvider {

  final String baseUrl = "http://192.168.0.103:8080/";

  Future _getHeader() async{
    String token = "";
    Map<String,String> hader = {"Authorization":token};
    return hader;
  }

  Future<PlatformList> fetchNewsList(int start, int end, String jwt,) async {

  }

  Future<PlatformList>fetchNearList(int start, int end, String jwt,List<double> geo) async {

  }

  Future<PlatformList> fetchBestList(int start, int end, String jwt) async {

  }

  Future<PlatformList> fetchSearchPlatform(int start, int end, String jwt,) async {

  }

  Future<PlatformList> getFavoritePlatform(int start, int end, String jwt,) async {

  }

  addToFovorites(val) async {

  }

  setRatings(val)  async{

  }

  delitePlatform(val) async{

  }

}