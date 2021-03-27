import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';


/// Shared Preferences Manager
/// This utility help us get or set String data to our shared Preferences
/// and can be extended as required for other data types.

class StorageManager{


  ///Shared Pref Instance
  SharedPreferences _preferences;

  ///Secure Storage Instance
  final storage = new FlutterSecureStorage();



  /// Fetch a string by a key
  Future<String> getString(String key)async{

    _preferences = await SharedPreferences.getInstance();

    return _preferences.getString(key);

  }


  /// Set a String by using key and a value to set against the key
  Future<bool> setString(String key, String value)async{

    _preferences = await SharedPreferences.getInstance();

    return _preferences.setString(key, value);

  }


  /// Save a Secure String by using key and a value to set against the key
  setSecureString(String key, String value)async{

    await storage.write(key: key, value: value);


  }


  /// Save a Secure String by using key and a value to set against the key
  Future<String> getSecureString(String key )async{

    return await storage.read(key: key);


  }




}