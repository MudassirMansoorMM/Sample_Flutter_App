import 'package:flutter/material.dart';
import 'package:sample_flutter_app/Configuration/Config.dart';
import 'package:sample_flutter_app/Constants.dart';
import 'package:sample_flutter_app/Screens/LoginScreen/Components/LoginForm.dart';
import 'package:sample_flutter_app/Utilities/StorageManager.dart';
import 'package:sample_flutter_app/WebServices/LoginWebService.dart';
import 'package:sample_flutter_app/Widgets/FlatButtonWidget.dart';






class LoginScreen extends StatelessWidget {




  GlobalKey<FormState> _formKey = new GlobalKey();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [



          /// StateFull Form widget
          LoginForm(formKey: _formKey, context: context, email: email, password: password,),

          /// Login Button
          Padding(
            padding: EdgeInsets.all(kDefaultPadding),
            child: InkWell(
                //Send Login Request
                onTap: ()=>loginReq(context),
                child: flatTextButton("LOGIN",height: Config.heightMultiplier * 7 , colorText: Colors.white, colorBg: kOrange)
            ),
          )

      ],),

    );

  }


  loginReq(BuildContext context) async {

    if(_formKey.currentState.validate()){
      
      Map<String,dynamic> _loginResponse =  await LoginWebService(id: email.text, pass: password.text).sendLoginReq();

      if(_loginResponse["status"] == 200){

        /// Save Bearer token into Secure Storage on Successful login and Proceed to next Screen
        StorageManager().setSecureString("bearer", _loginResponse["response"]);

      }
      /// Navigate to Error Screen
      else if(_loginResponse["status"] > 300){



      }

      Navigator.pushReplacementNamed(context, "/blogListScreen");
      
    }
    
  }


}
