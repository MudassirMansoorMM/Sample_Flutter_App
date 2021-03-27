import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sample_flutter_app/Configuration/Config.dart';

import '../Constants.dart';


Widget loading = new WillPopScope(child: AlertDialog(

    elevation: 0,
    backgroundColor: Colors.transparent,
    content: Container(

      height: Config.heightMultiplier * 20,
      width: Config.heightMultiplier * 20,

      child: SpinKitDoubleBounce(
        size: 125,
        duration: Duration(milliseconds: 1000),
        itemBuilder: (BuildContext context, int index) {
          return DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: index.isEven ? Colors.white : Colors.white.withOpacity(.5),
            ),
          );
        },
      ),
    ))
    , onWillPop: (){}
);