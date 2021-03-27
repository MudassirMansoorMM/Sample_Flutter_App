import 'package:flutter/material.dart';


/// Provides BoxDecoration properties to make a Circular Container
/// for one of the most commonly used Widget of the Application
/// i.e Container.


BoxDecoration circularEdges(double topLeft, double topRight , double bottomLeft, double bottomRight , Color color ){


  return BoxDecoration(
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topLeft) ,
        topRight:  Radius.circular(topRight),
        bottomLeft: Radius.circular(bottomLeft),
        bottomRight: Radius.circular(bottomRight)
    ),
    color: color,
  );


}