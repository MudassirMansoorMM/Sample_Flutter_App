import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

//Support Services / Packages
import 'package:provider/provider.dart';

//ChangeNotifiers / ViewModels
import 'package:sample_flutter_app/ChangeNotifiers/BlogEntryChangeNotifier.dart';
import 'package:sample_flutter_app/Constants.dart';

//Widgets / Views
import 'Components/Body.dart';



class BlogEntryScreen extends StatefulWidget {

  final String blogId;

  BlogEntryScreen({@required this.blogId});


  @override
  _BlogEntryScreenState createState() => _BlogEntryScreenState();


}




class _BlogEntryScreenState extends State<BlogEntryScreen> {


  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  void initState() {
    Provider.of<BlogEntryChangeNotifier>(context,listen:false).getSelectedBlogEntry(widget.blogId, context);
    super.initState();
  }



  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,

      body: Consumer<BlogEntryChangeNotifier>(
        builder: (key, blogProvider, child ){
          return !blogProvider.loaded ?  Center(child: CircularProgressIndicator(backgroundColor: Colors.white,),):



          CustomScrollView(
            slivers: <Widget>[

              /// Sliver App Bar -----------------------------------------------
              /// Sliver App Bar -----------------------------------------------
              SliverAppBar(
                centerTitle: true,
                floating: true,

                flexibleSpace: Stack(
                  fit: StackFit.expand,
                  children: [
                    /// BLOG IMAGE
                    /// BLOG IMAGE
                    Container(
                      color: kGrey,
                      child: CachedNetworkImage(

                        fit: BoxFit.fitWidth,
                        imageUrl: blogProvider.blogEntry.imageUrl,
                        placeholder: (context, url) => Image.asset('assets/images/placeHolder.gif'),
                        errorWidget: (context, url, error) => Center(child: Icon(Icons.error)),

                      ),
                    ),
                    Container(
                      color: Colors.black.withOpacity(.35),
                    )
                  ],
                ),
                // Make the initial height of the SliverAppBar larger than normal.
                expandedHeight: 200,
              ),


              /// Flexible Body ------------------------------------------------
              /// Flexible Body ------------------------------------------------
              SliverList(

                delegate: SliverChildBuilderDelegate(

                      (context, index) {


                        return  blogEntryBody(blogProvider);

                  },
                  // Builds 1000 ListTiles
                  childCount: 1,
                ),
              ),
            ],
          );
        },
      ),
    );

  }

}
