import 'dart:convert';

import 'package:share/share.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static String KEY_TRIBELIO = "mrms";
  static String Key_token = "tokenId";
  static String Key_id = "id";
  static String Key_name = "name";
  static String Key_email = "email";
  static String Key_profile_pic = "profile_pic";
  static String Key_id_groups = "id_groups";
  static String Key_email_verified_at = "email_verified_at";
  static String Key_active = "active";
  static String Key_created_at = "created_at";
  static String Key_updated_at = "updated_at";
  static String Key_isOnBoarding = 'isOnBoarding';

  static void setIsOnBoarding(bool isOnBoarding)async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setBool(Key_isOnBoarding, isOnBoarding);
  }

  static Future<bool> getIsOnBoarding() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool(Key_isOnBoarding);
  }

  static void setid(String id) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString(Key_id, id);
  }

  static Future<String> getId() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return '${pref.getString(Key_id)}';
  }

  static void setname(String name) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString(Key_name, name);
  }

  static Future<String> getname() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(Key_name);
  }

  static void setemail(String email) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString(Key_email, email);
  }

  static Future<String> getemail() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(Key_email);
  }

  static void setprofile_pic(String profile_pic) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString(Key_profile_pic, profile_pic);
  }

  static Future<String> getprofile_pic() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(Key_profile_pic);
  }

  static void setid_groups(String id_groups) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString(Key_id_groups, id_groups);
  }

  static Future<String> getid_groups() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(Key_id_groups);
  }

  static void setemail_verified_at(String email_verified_at) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString(Key_email_verified_at, email_verified_at);
  }

  static Future<String> getemail_verified_at() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(Key_email_verified_at);
  }

  static void setactive(String active) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString(Key_active, active);
  }

  static Future<String> getactive() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(Key_active);
  }

  static void setcreated_at(String created_at) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString(Key_created_at, created_at);
  }

  static Future<String> getcreated_at() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(Key_created_at);
  }

  static void setupdated_at(String updated_at) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString(Key_updated_at, updated_at);
  }

  static Future<String> getupdated_at() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(Key_updated_at);
  }


  static void setTesting(int i) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setInt('Key_testing', i);
  }

  static Future<int> getTesting() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getInt('Key_testing');
  }

  static void setToken(String token) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString(Key_token, token);
  }

  static Future<String> getToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(Key_token);
  }


}