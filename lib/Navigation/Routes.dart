import 'package:flutter/cupertino.dart';
import 'package:sample_flutter_app/Screens/BlogEntry/BlogEntryScreen.dart';
import 'package:sample_flutter_app/Screens/BlogListScreen/BlogListScreen.dart';
import 'package:sample_flutter_app/Screens/LoginScreen/LoginScreen.dart';
import 'package:sample_flutter_app/Screens/SplashScreen/SplashScreen.dart';





routes(BuildContext context){


  return {

    '/splashScreen': (context) => SplashScreen(),
    '/loginScreen': (context) => LoginScreen(),
    '/blogListScreen': (context) => BlogListScreen(),
    '/blogEntryScreen': (context) => BlogEntryScreen(),

  };



}