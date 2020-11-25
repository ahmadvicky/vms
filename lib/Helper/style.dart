// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:mrmsios/Helper/color.dart';
import 'package:mrmsios/constant/assets.dart';
import 'dart:io' show Platform;



ThemeData appTheme() {
  return ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: Platform.isIOS ? Colors.white : Colors.white,
      cursorColor: Colors.white,
      accentColor: Colors.white,
      hoverColor: Colors.white,
      focusColor: Colors.white,
      buttonColor: Colors.blue,
      primaryTextTheme: TextTheme(
          title: TextStyle(
            color: ColorsState.colorPrimaryBlue,
            fontFamily: Fonts.avenir

          )
      ),
      brightness: Brightness.light,
      fontFamily: 'Avenir',

      pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          }
      ),
      appBarTheme: AppBarTheme(
        elevation: 0, // This removes the shadow from all App Bars.
        brightness: Brightness.light,
      )
  );
}

ThemeData darkTheme(){
  return ThemeData(
      brightness: Brightness.dark,
      primarySwatch: ColorsState.colorPrimaryBlue,
      primaryColor: Platform.isIOS ? Colors.white : Colors.white,
      cursorColor: Colors.white,
      accentColor: Colors.white,
      hoverColor: Colors.white,
      focusColor: Colors.white,
      buttonColor: Colors.white,
      textTheme: TextTheme(
        title: TextStyle(
          color: Colors.black
        )
      ),
      primaryTextTheme: TextTheme(
          title: TextStyle(
            color: Colors.white,
            fontFamily: Fonts.avenir

          )
      ),
      fontFamily: 'Avenir',

      pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          }
      ),
      appBarTheme: AppBarTheme(
        elevation: 0, // This removes the shadow from all App Bars.
      )
  );
}

ThemeData shippingTheme() {
  return ThemeData.light().copyWith(
    cursorColor: Colors.grey,
    inputDecorationTheme: InputDecorationTheme(
      isCollapsed: false,
      isDense: true,
      hasFloatingPlaceholder: false,
      filled: true,
      fillColor: ColorsState.greyBright,
      focusColor: ColorsState.greyBright,
      labelStyle: TextStyle(
        color: Colors.grey,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorsState.greyBright),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    ),
  );
}

ThemeData discussionTheme() {
  return ThemeData.light().copyWith(
    cursorColor: Colors.grey,
    inputDecorationTheme: InputDecorationTheme(
      isCollapsed: false,
      isDense: true,
      hasFloatingPlaceholder: false,
      filled: true,
      fillColor: Colors.transparent,
      focusColor: Colors.transparent,
      labelStyle: TextStyle(
        color: Colors.grey,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorsState.colorPrimaryBlue),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    ),
  );
}