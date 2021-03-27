import 'package:flutter/material.dart';
import 'package:sample_flutter_app/Configuration/Config.dart';
import 'package:sample_flutter_app/Constants.dart';
import 'package:sample_flutter_app/Screens/LoginScreen/Components/LoginForm.dart';
import 'package:sample_flutter_app/Utilities/StorageManager.dart';
import 'package:sample_flutter_app/WebServices/LoginWebService.dart';
import 'package:sample_flutter_app/Widgets/FlatButtonWidget.dart';
import 'package:sample_flutter_app/Widgets/Loading.dart';






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


  /// Initiate Login Request Function
  /// Initiate Login Request Function
  loginReq(BuildContext context) async {

    String response;

    // Validate Form
    if(_formKey.currentState.validate()){


      //Display loading indicator
      showDialog(context: context, builder: (BuildContext context)=>loading);

      // Login Web Service Request
      Map<String,dynamic> _loginResponse =  await LoginWebService(id: email.text, pass: password.text).sendLoginReq();

      //Hide loading indicator on response
      Navigator.of(context).pop();

      // Check if the user login was Successful
      if(_loginResponse["status"] == 201){

        // Save Bearer token into Secure Storage on Successful login and Proceed to next Screen
        StorageManager().setSecureString("bearer", _loginResponse["response"]);

        // Navigate to NextScreen
        Navigator.pushReplacementNamed(context, "/blogListScreen");

      }
      // Show Error Message if the user couldn't login
      else if(_loginResponse["status"] > 300){

        /// Show Snackbar with Response Message
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar( content: Text(_loginResponse["response"]),)
        );

      }
      
    }
    
  }


}
