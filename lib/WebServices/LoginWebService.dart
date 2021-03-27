import 'package:dio/dio.dart';
import '../Constants.dart';


class LoginWebService{

  String id;
  String pass;

  Response<String> _responseLogin = new Response();


  LoginWebService({
    this.id,
    this.pass
  });




  Future<Map<String,dynamic>> sendLoginReq() async {


    Dio dioLogin = new Dio();



      try {

        _responseLogin = await dioLogin.post(

          "$baseUrl/login",



          options: Options(
              followRedirects: false,
              validateStatus: (status) {
                return status < 500;
              }),

        );


        ///Return response if statuss is okay
        return {"response": _responseLogin.data, "status": _responseLogin.statusCode};


      }on DioError catch(error){

        if(error.message.contains("101")){

          ///
          return {"response": "No Internet", "status": 101};

        }

        else if(error.message.contains("110")){

          ///
          return {"response": "Please turn on Internet", "status": 110};

        }
      }



  }


}


