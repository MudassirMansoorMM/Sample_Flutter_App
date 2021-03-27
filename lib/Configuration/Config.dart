import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';



class Config{

  static double _screenWidth;
  static double _screenHeight;
  static double _blockSizeHorizontal;
  static double _blockSizeVertical;

  static double textMultiplier;
  static double widthMultiplier;
  static double heightMultiplier;


  void init(BoxConstraints constraints, Orientation orientation ){

    if(orientation == Orientation.portrait){

      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;

    }else{
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
    }

    _blockSizeHorizontal = _screenWidth/100;
    _blockSizeVertical = _screenHeight/100;

    textMultiplier = _blockSizeVertical;
    widthMultiplier= _blockSizeHorizontal;
    heightMultiplier = _blockSizeVertical;

    print(_blockSizeVertical);
    print(_blockSizeHorizontal);
  }

}