import 'package:flutter/material.dart';
import 'package:mrmsios/Helper/color.dart';



ThemeData appTheme() {
  return ThemeData(
      primarySwatch: Colors.orange,
      primaryColor: ColorsState.colorPrimary,
      cursorColor: Colors.orange[700],
      accentColor: Colors.orange,
      hoverColor: Colors.orange,
      focusColor: Colors.orange,
      buttonColor: Colors.orange,
      primaryTextTheme: TextTheme(
          title: TextStyle(
            color: ColorsState.colorPrimary,

          )
      ),
      brightness: Brightness.light,
      fontFamily: 'Open Sans',

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
      primarySwatch: ColorsState.white,
      primaryColor: ColorsState.colorPrimary ,
      cursorColor: Colors.orange[700],
      accentColor: Colors.orange,
      hoverColor: Colors.orange,
      focusColor: Colors.orange,
      buttonColor: Colors.orange,
      textTheme: TextTheme(
        title: TextStyle(
          color: Colors.black
        )
      ),
      primaryTextTheme: TextTheme(
          title: TextStyle(
            color: ColorsState.colorPrimary,

          )
      ),
      fontFamily: 'Open Sans',

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
        borderSide: BorderSide(color: ColorsState.colorPrimary),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    ),
  );
}