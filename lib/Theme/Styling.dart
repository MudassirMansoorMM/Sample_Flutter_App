import 'package:flutter/material.dart';
import '../Configuration/Config.dart';
import '../Constants.dart';


class AppTheme{
  AppTheme._();


  static const Color appThemeColor = Color(0xFF6464EA);

  static final ThemeData lightTheme = ThemeData(

      iconTheme: IconThemeData(color: Colors.white),
      primaryColor: appThemeColor,
      primaryColorLight: kBaseLight,
      scaffoldBackgroundColor: appThemeColor,
      brightness: Brightness.light,
      textTheme: lightTextTheme ,
      primarySwatch: kBaseLight


  );


  static final TextTheme lightTextTheme = TextTheme(

    headline1: _heading1,
    headline2: _heading2,
    headline3: _heading3,
    headline4: _heading4,
    headline5: _heading5,
    headline6: _heading6,
    subtitle1: heading1Bold,
    subtitle2: heading4Bold,

  );

  static final TextStyle heading1Bold = TextStyle(
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w400,
    color: Colors.black,
    fontSize: 3.5 * Config.textMultiplier,
  );

  static final TextStyle heading4Bold = TextStyle(
    fontFamily: 'Nunito',
    color: Colors.white,
    fontWeight: FontWeight.w800,
    fontSize: 3.5 * Config.textMultiplier,
  );

  static final TextStyle _heading1 = TextStyle(
    fontFamily: 'Nunito',
    color: Colors.black,
    fontSize: 2.5 * Config.textMultiplier,
  );

  static final TextStyle _heading2 = TextStyle(
    fontFamily: 'Nunito',
    color: Colors.black,
    fontSize: 3.0 * Config.textMultiplier ,

  );

  static final TextStyle _heading3 = TextStyle(
    fontFamily: 'Nunito',
    color: Colors.black,
    fontSize: 3.5 * Config.textMultiplier ,

  );

  static final TextStyle _heading4 = TextStyle(
    fontFamily: 'Nunito',
    color: Colors.white,
    fontWeight: FontWeight.w100,
    fontSize: 2.5 * Config.textMultiplier,
  );

  static final TextStyle _heading5 = TextStyle(
    fontFamily: 'Nunito',
    color: Colors.white,
    fontSize: 3.0 * Config.textMultiplier,
  );

  static final TextStyle _heading6 = TextStyle(
      fontFamily: 'Nunito',
      color: Colors.white,
      fontSize: 3.5 * Config.textMultiplier,
      fontWeight: FontWeight.bold
  );




}