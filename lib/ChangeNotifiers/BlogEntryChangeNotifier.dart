import 'package:flutter/material.dart';
import 'package:sample_flutter_app/Models/BlogModel.dart';
import 'package:sample_flutter_app/Screens/ErrorScreens/NoConnection.dart';
import 'package:sample_flutter_app/Screens/ErrorScreens/SomethingWentWrong.dart';
import 'package:sample_flutter_app/WebServices/BlogEntryWebService.dart';

class BlogEntryChangeNotifier extends ChangeNotifier{

  Blog _blogEntry;
  bool loaded = false;


  Blog get blogEntry{
    return _blogEntry;
  }


  Future<void> getSelectedBlogEntry(String blogId, BuildContext context) async {

    reset();

    ///Call to the Web Service
    Map<String,dynamic> resBlogEntry = await BlogEntryWebService(blogId: blogId).sendBlogEntryReq();

    /// Socket Exception due to Internet
    if(resBlogEntry == null){

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> NoConnection(routeName: "/blogEntryScreen")));

    }
    /// All Good Update Object and Notify Screen
    else if(resBlogEntry["status"] == 200){

      _blogEntry = Blog.fromJson(resBlogEntry["response"]);
      loaded = true;
      notifyListeners();



    }
    /// Poor internet or No Connection Service
    else if(resBlogEntry["status"]==110 || resBlogEntry["status"]==101 ){


      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> NoConnection(routeName: "/blogEntryScreen")));

    }
    /// Other Error by Server
    else{

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ErrorScreen(routeName: "/blogEntryScreen")));

    }

  }


  void reset(){
    loaded = false;
  }




}