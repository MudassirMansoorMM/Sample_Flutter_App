import 'package:flutter/material.dart';
import 'package:sample_flutter_app/Configuration/Config.dart';

import '../Constants.dart';
import 'CircularContainer.dart';


class FlatIconButton{


  double height;
  double width;
  Color colorBg, colorIcon;
  IconData icon;

  FlatIconButton({
    this.height,
    this.width,
    this.colorBg,
    this.colorIcon,
    this.icon,
  });


  Widget flatIconButtonWidget(){

    return Container(

      height: height == null ?  Config.heightMultiplier * 5 : height,
      width: width == null ?  double.infinity : width,

      decoration: circularEdges(kDefaultPadding, kDefaultPadding, kDefaultPadding, kDefaultPadding, colorBg == null ? Colors.white :  colorBg ),

      child: Icon(icon == null ? Icons.navigate_next_rounded : icon, size: kDefaultPadding * 2, color: colorIcon == null ? Colors.black : colorIcon,),

    );

  }



}


