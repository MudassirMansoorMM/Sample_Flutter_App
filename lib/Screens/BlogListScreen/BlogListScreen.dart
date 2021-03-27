import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_flutter_app/ChangeNotifiers/BlogListChangeNotifiers.dart';
import 'package:sample_flutter_app/Constants.dart';
import 'package:sample_flutter_app/Widgets/CircularContainer.dart';
import 'Components/BlogTile.dart';


class BlogListScreen extends StatefulWidget {

  @override
  _BlogListScreenState createState() => _BlogListScreenState();
}




class _BlogListScreenState extends State<BlogListScreen> {




  @override
  void initState() {
    super.initState();

    Provider.of<BlogListChangeNotifier>(context,listen:false).fetchBlogs(context);

  }

  String title = "Latest Blog";


  @override
  Widget build(BuildContext context) {

    return Scaffold(


      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(title,),
        elevation: 0,
      ),


      body: Consumer<BlogListChangeNotifier>(

        builder: (context, blogProvider , child ){

          /// Main Container
          /// Main Container
          return  Container(
            decoration: circularEdges(20, 20, 0, 0, kGrey),

            child:

            !blogProvider.loaded ?

            /// Progress Indicator Uptill Data is fetched
            Center(child: CircularProgressIndicator(backgroundColor: kBase,),) :


            /// ListView with BlogTiles
            ListView.builder(
                itemCount: blogProvider.blogList.length,
                itemBuilder: (BuildContext context, int index){

                  return blogTile( blogProvider.blogList[index], context );

                },
            ),
          );
        },
      )
    );


  }


}
