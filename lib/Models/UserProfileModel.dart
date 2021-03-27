
import 'package:flutter/cupertino.dart';

class UserProfileModel{



  String name, profileImage, email;
  int phone;
  List<String> preferences;


  UserProfileModel({
    @required this.name,
    @required this.email,
    this.profileImage,
    this.phone,
    this.preferences
  });


}