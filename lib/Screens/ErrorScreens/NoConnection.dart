
import 'package:flutter/material.dart';
import 'package:sample_flutter_app/Configuration/Config.dart';
import 'package:sample_flutter_app/Widgets/CircularContainer.dart';
import 'package:sample_flutter_app/Widgets/CloseAppDialog.dart';
import '../../Constants.dart';




class NoConnection extends StatelessWidget {

  final String routeName;


  NoConnection({
    this.routeName
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(

        ///EXIT APPLICATION
        ///EXIT APPLICATION
        ///EXIT APPLICATION
        onWillPop: () async {

          showDialog(context: context, builder: (BuildContext context){
            return closeAppDialog(context);
          });

          return await false;

        },

        child: Stack(
          children: [
            Container(
              height: Config.heightMultiplier  * 100 ,
              width: Config.widthMultiplier * 100,
              child: Image.asset("assets/images/noInternet.png", fit: BoxFit.fitWidth,),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: EdgeInsets.all(kDefaultPadding * 2),
                  child: Column(
                    children: [
                      Row(children: [

                        Text("Connection Lost",

                          style: Theme.of(context).textTheme.headline1,
                        )

                      ],),


                      Column(
                        children: [

                          Text("You have no internet access, please retry.",

                            style: Theme.of(context).textTheme.headline2,
                          )

                        ],),


                    ],
                  ),
                ),




                Padding(
                    padding: EdgeInsets.only(bottom: kDefaultPadding * 2 , left: kDefaultPadding * 2 ),
                    child: Container(

                        height: Config.heightMultiplier * 6,
                        width: Config.widthMultiplier * 30,
                        decoration: circularEdges(
                            Config.heightMultiplier * 5,
                            Config.heightMultiplier * 5,
                            Config.heightMultiplier * 5,
                            Config.heightMultiplier * 5,
                            Colors.white
                        ),



                        child: GestureDetector(
                          onTap: (){

                            Navigator.pushReplacementNamed(context, routeName);

                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Retry",style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.black), ),
                            ],
                          ),
                        )
                    )
                ),

              ],
            )
          ],
        ),
      )
    );
  }
}
