import 'package:flutter/material.dart';
import 'package:sample_flutter_app/Configuration/Config.dart';
import 'package:sample_flutter_app/Constants.dart';
import 'package:sample_flutter_app/Utilities/StartupUtility.dart';




class SplashScreen extends StatefulWidget{

  @override
  _SplashScreenState createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {


  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();


  /// Initiate Function after the Screen is rendered.
  /// This function will help us identify the existing user details and
  /// so that the appropriate screen is Pushed to the stack in case no user is
  /// available.
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => navigateToNextScreen());
  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(

      key: _scaffoldKey,
      body: Center(

        /// Logo
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: Config.heightMultiplier * 10,
              width: Config.heightMultiplier * 10,

              child: Image.asset("assets/images/logo.png"),
            ),
            SizedBox(height: kDefaultPadding,),
            Text("Photo Blog", style: Theme.of(context).textTheme.subtitle2,)
          ],
        ),
      ),
    );

  }



  /// Function to determine next screen based upon user login
  void navigateToNextScreen() async{

    bool user = await StartUpUtility().getUser();
    String nextScreen;

    ///Check if user exists
    if(user){

      nextScreen = "/blogListScreen";

    }else{
      nextScreen = "/loginScreen";
    }

    /// Navigate to next Screen
    Future.delayed(Duration(seconds: 1),
        ()=>Navigator.pushReplacementNamed(_scaffoldKey.currentContext, nextScreen)
    );

  }



}
