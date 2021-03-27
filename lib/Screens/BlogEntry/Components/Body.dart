import 'package:flutter/material.dart';
import 'package:sample_flutter_app/ChangeNotifiers/BlogEntryChangeNotifier.dart';
import 'package:sample_flutter_app/Configuration/Config.dart';
import 'package:sample_flutter_app/Widgets/CircularContainer.dart';
import '../../../Constants.dart';




Container blogEntryBody(BlogEntryChangeNotifier blogProvider) {
  return Container(


    decoration: circularEdges(0, 0, 20, 20, Colors.white),
    padding: EdgeInsets.all(kDefaultPadding),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [


        /// Title
        /// Title
        Text(
          blogProvider.blogEntry.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: Config.heightMultiplier * 2.5,
          ),
        ),

        SizedBox(height: kDefaultPadding/2,),
        /// Created At
        /// Created At
        Text(
          blogProvider.blogEntry.createdAt.split(".")[0].replaceAll("T", "  "),
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.black,
            fontSize: Config.heightMultiplier * 1.8,
          ),
        ),

        SizedBox(height: kDefaultPadding * 2),

        /// Article Text
        /// Article Text
        Text(
          dymmyText,
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: Colors.black,
            fontSize: Config.heightMultiplier * 2.0,
          ),
        ),


      ],),

  );
}