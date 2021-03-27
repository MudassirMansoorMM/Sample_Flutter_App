import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:sample_flutter_app/Utilities/StorageManager.dart';
import '../Constants.dart';





Future<Map<String,dynamic>> sendBlogListReq() async {


    Response<String> _response = new Response();

    Dio dio = new Dio();

    /// Get Saved Bearer token from Secure Storage
    String bearerToken = await StorageManager().getSecureString("bearer");

    try {

      /// Add Bearer token to get Request
      dio.options.headers["Authorization"] = "Bearer $bearerToken";

      _response = await dio.get(

        "$baseUrl/blogs",


        options: Options(
            followRedirects: false,
            validateStatus: (status) {
              return status < 500;
            }),

      );

      /// Save Bearer token if request is successful
      if(_response.statusCode == 200){

        return {"response": jsonDecode(_response.data), "status": _response.statusCode};

      }else{

        /// If we don't get list of blogs from the server
        return {"response": "Something went wrong, please try again later.", "status": 404};

      }




    }on DioError catch(error){

      if(error.message.contains("101")){

        return {
          "response" : "Please turn on Wifi or Mobile Data",
          "status" : 101
        };

      }
      else if(error.message.contains("110")){
        return {
          "response" : "No Internet",
          "status" : 110
        };

      }
    }


  }

