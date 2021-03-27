import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_flutter_app/ChangeNotifiers/BlogListChangeNotifiers.dart';
import 'ChangeNotifiers/BlogEntryChangeNotifier.dart';
import 'Configuration/Config.dart';
import 'Navigation/Routes.dart';
import 'Theme/Styling.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    /// Updates with Screen Height/Width
    return LayoutBuilder(builder: (context, constraints){

      /// Updates if the App is in LandScape or Portrait
      return OrientationBuilder(
         builder:(context, orientation){
           Config().init(constraints,orientation);


           /// Change Providers
           return MultiProvider(

             providers: [
               ChangeNotifierProvider(create: (_) => BlogListChangeNotifier()),
               ChangeNotifierProvider(create: (_) => BlogEntryChangeNotifier()),
             ],

             /// Material App
             child: MaterialApp(
               debugShowCheckedModeBanner: false,
               title: 'Flutter Demo',
               theme: AppTheme.lightTheme,


               initialRoute: '/splashScreen',

               /// routes function return map of all available routes for Navigation
               routes: routes(context),

             ),

           );

         });


    });


  }
}
