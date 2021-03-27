
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sample_flutter_app/Configuration/Config.dart';

import '../Constants.dart';
import 'CircularContainer.dart';

Widget closeAppDialog(BuildContext context){


  return AlertDialog(

    elevation: 0,
    backgroundColor: Colors.transparent,

    content: Container(

      decoration: circularEdges(20, 20, 20, 20, Colors.white),
      height: Config.heightMultiplier  * 25,
      width: Config.widthMultiplier * 80,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

        Container(
            margin: EdgeInsets.all(kDefaultPadding/2),
            padding: EdgeInsets.all(kDefaultPadding),

            decoration: circularEdges(15, 15, 15, 15, kBase.shade800),

            child: Column(
              children: [
                Text("Are you sure you want to exit Application?", style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.white),),
              ],
            )
        ),

        Spacer(),

        Padding(
          padding: EdgeInsets.only(bottom: kDefaultPadding,right: kDefaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              InkWell(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding , vertical: kDefaultPadding/5),
                  decoration: circularEdges(100, 100, 100, 100, Colors.transparent ),
                  child: Text("No" ,
                    style: TextStyle(color: kBase,fontSize: Config.heightMultiplier * 2.5),
                  ),
                ),
              ),

              SizedBox(width: kDefaultPadding,),

              InkWell(
                onTap: (){
                  Future.delayed(const Duration(milliseconds: 200), () {
                    exit(0);
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding , vertical: kDefaultPadding/5),
                  decoration: circularEdges(100, 100, 100, 100, Colors.redAccent ),
                  child: Text("Yes" ,
                    style: TextStyle(color: Colors.white,fontSize: Config.heightMultiplier * 2.5),
                  ),
                ),
              ),


          ],),
        )

      ],)

    ),

  );


}