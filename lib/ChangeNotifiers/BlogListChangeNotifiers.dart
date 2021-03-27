import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_flutter_app/Models/BlogModel.dart';
import 'package:sample_flutter_app/Screens/ErrorScreens/NoConnection.dart';
import 'package:sample_flutter_app/Screens/ErrorScreens/SomethingWentWrong.dart';
import 'package:sample_flutter_app/WebServices/BlogListWebService.dart';


class BlogListChangeNotifier extends ChangeNotifier{


  List<Blog> blogList = [];
  bool loaded = false;
  String _selectBlogId;


  String get selectedId{
    return _selectBlogId;
  }


  Future<void> fetchBlogs(BuildContext context) async {

    /// Socket Exception due to Internet
    final responseBlogReq = await sendBlogListReq();

    /// Socket Exception due to Internet
    if(responseBlogReq == null){

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ErrorScreen(routeName: "/blogListScreen",)));


    }
    /// All Good Update Object and Notify Screen
    else if(responseBlogReq["status"] == 200){


      responseBlogReq["response"].forEach((json) {

        blogList.add(Blog.fromJson(json));

      });


      loaded = true;

      notifyListeners();



    }
    /// Poor internet or No Connection Service
    else if(responseBlogReq["status"]==110 || responseBlogReq["status"]==110){

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> NoConnection(routeName: "/blogListScreen",)));

    }
    /// Other Error by Server
    else{

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ErrorScreen(routeName: "/blogListScreen",)));

    }




  }



  void setSelectedBlogId(String id){

    _selectBlogId = id;

    notifyListeners();

  }



}