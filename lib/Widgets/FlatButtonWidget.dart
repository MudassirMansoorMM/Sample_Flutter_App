import 'package:flutter/material.dart';
import 'package:sample_flutter_app/Configuration/Config.dart';

import '../Constants.dart';
import 'CircularContainer.dart';




  Widget flatTextButton(String text, {double height, double width, Color colorBg, Color colorText}){

    return Container(

      height: height == null ?  Config.heightMultiplier * 5 : height,
      width: width == null ?  double.infinity : width,

      decoration: circularEdges(kDefaultPadding, kDefaultPadding, kDefaultPadding, kDefaultPadding, colorBg == null ? Colors.white :  colorBg ),

      child: Center(
          child: Text(text,
              style: TextStyle(color: colorText, fontSize: Config.heightMultiplier * 2.5, fontWeight: FontWeight.bold, )
          )
      ),

    );

  }


