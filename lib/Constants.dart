import 'Configuration/Config.dart';
import 'package:flutter/material.dart';






///++++++++++++++++++++++ Default Padding ++++++++++++++++++++++++++

double kDefaultPadding = Config.heightMultiplier * 2;


///++++++++++++++++++++++++++ Base URL ++++++++++++++++++++++++++++++

String baseUrl = "https://60585b2ec3f49200173adcec.mockapi.io/api/v1/";


///++++++++++++++++++++++++++   User  ++++++++++++++++++++++++++++++

String email;

///++++++++++++++++++++++ Blog Entry Screen ++++++++++++++++++++++++++

String dymmyText  = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";


///++++++++++++++++++++++++++++  Color Declaration ++++++++++++++++++++++++++
///++++++++++++++++++++++++++++  Color Declaration ++++++++++++++++++++++++++

MaterialColor kBase = MaterialColor(0xFF6464EA, kBaseColor);
MaterialColor kOrange = MaterialColor(0xFFFA8C37, kOrangeColor);
MaterialColor kBaseLight = MaterialColor(0xFFB6B6FE, kBaseLightColor);
MaterialColor kOrangeLight = MaterialColor(0xFFFEE3D0, kOrangeLightColor);
MaterialColor kGrey = MaterialColor(0xFFE8EBF4, kGreyColor);
MaterialColor kBlack = MaterialColor(0xFF000000, kBlackColor);


const Map<int, Color> kBaseColor =
{
  50: Color.fromRGBO(100,100,234, .1),
  100:Color.fromRGBO(100,100,234, .2),
  200:Color.fromRGBO(100,100,234, .3),
  300:Color.fromRGBO(100,100,234, .4),
  400:Color.fromRGBO(100,100,234, .5),
  500:Color.fromRGBO(100,100,234, .6),
  600:Color.fromRGBO(100,100,234, .7),
  700:Color.fromRGBO(100,100,234, .8),
  800:Color.fromRGBO(100,100,234, .9),
  900:Color.fromRGBO(100,100,234,  1),
};



const Map<int, Color> kBaseLightColor =
{
  50: Color.fromRGBO(182,182,254, .1),
  100:Color.fromRGBO(182,182,254, .2),
  200:Color.fromRGBO(182,182,254, .3),
  300:Color.fromRGBO(182,182,254, .4),
  400:Color.fromRGBO(182,182,254, .5),
  500:Color.fromRGBO(182,182,254, .6),
  600:Color.fromRGBO(182,182,254, .7),
  700:Color.fromRGBO(182,182,254, .8),
  800:Color.fromRGBO(182,182,254, .9),
  900:Color.fromRGBO(182,182,254,  1),
};



const Map<int, Color> kOrangeColor =
{
  50: Color.fromRGBO(250,140,55, .1),
  100:Color.fromRGBO(250,140,55, .2),
  200:Color.fromRGBO(250,140,55, .3),
  300:Color.fromRGBO(250,140,55, .4),
  400:Color.fromRGBO(250,140,55, .5),
  500:Color.fromRGBO(250,140,55, .6),
  600:Color.fromRGBO(250,140,55, .7),
  700:Color.fromRGBO(250,140,55, .8),
  800:Color.fromRGBO(250,140,55, .9),
  900:Color.fromRGBO(250,140,55,  1),
};

const Map<int, Color> kOrangeLightColor =
{
  50: Color.fromRGBO(254,207,208, .1),
  100:Color.fromRGBO(254,207,208, .2),
  200:Color.fromRGBO(254,207,208, .3),
  300:Color.fromRGBO(254,207,208, .4),
  400:Color.fromRGBO(254,207,208, .5),
  500:Color.fromRGBO(254,207,208, .6),
  600:Color.fromRGBO(254,207,208, .7),
  700:Color.fromRGBO(254,207,208, .8),
  800:Color.fromRGBO(254,207,208, .9),
  900:Color.fromRGBO(254,207,208,  1),
};


const Map<int, Color> kGreyColor =
{
  50: Color.fromRGBO(232,235,244, .1),
  100:Color.fromRGBO(232,235,244, .2),
  200:Color.fromRGBO(232,235,244, .3),
  300:Color.fromRGBO(232,235,244, .4),
  400:Color.fromRGBO(232,235,244, .5),
  500:Color.fromRGBO(232,235,244, .6),
  600:Color.fromRGBO(232,235,244, .7),
  700:Color.fromRGBO(232,235,244, .8),
  800:Color.fromRGBO(232,235,244, .9),
  900:Color.fromRGBO(232,235,244,  1),
};


const Map<int, Color> kBlackColor =
{
  50:Color.fromRGBO(000,000,000, .1),
  100:Color.fromRGBO(0,0,0, .2),
  200:Color.fromRGBO(0,0,0, .3),
  300:Color.fromRGBO(0,0,0, .4),
  400:Color.fromRGBO(0,0,0, .5),
  500:Color.fromRGBO(0,0,0, .6),
  600:Color.fromRGBO(0,0,0, .7),
  700:Color.fromRGBO(0,0,0, .8),
  800:Color.fromRGBO(0,0,0, .9),
  900:Color.fromRGBO(000,000,0, 1),
};

///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++