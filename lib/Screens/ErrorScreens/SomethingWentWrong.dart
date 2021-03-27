
import 'package:flutter/material.dart';
import 'package:sample_flutter_app/Configuration/Config.dart';
import 'package:sample_flutter_app/Widgets/CircularContainer.dart';
import 'package:sample_flutter_app/Widgets/FlatButtonWidget.dart';

import '../../Constants.dart';




class ErrorScreen extends StatelessWidget {

  final String routeName;

  ErrorScreen({

    @required this.routeName

  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Config.heightMultiplier  * 100 ,
            width: Config.widthMultiplier * 100,
            child: Image.asset("assets/images/error.png", fit: BoxFit.fitWidth,),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Padding(
                padding: EdgeInsets.all(kDefaultPadding * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(children: [

                      /// Error Title
                      Text("Oh no!",

                        style: Theme.of(context).textTheme.headline1,
                        textAlign: TextAlign.center,
                      )

                    ],),


                    /// Error Message
                    Column(
                      children: [

                        Text("Something went wrong, Please try again.",

                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.center,
                        )

                      ],),


                  ],
                ),
              ),




              Padding(
                  padding: EdgeInsets.only(bottom: kDefaultPadding * 2 , ),


                  child: InkWell(

                    /// Retry Loading Screen
                    onTap: ()=> Navigator.pushReplacementNamed(context, routeName),

                    /// Retry Button
                    child: flatTextButton(

                      "Retry",
                      height: Config.heightMultiplier * 6,
                      width:  Config.widthMultiplier * 30,
                      colorBg: kOrange,
                      colorText: Colors.white

                    ),
                  )
              ),

            ],
          )
        ],
      ),
    );
  }
}
