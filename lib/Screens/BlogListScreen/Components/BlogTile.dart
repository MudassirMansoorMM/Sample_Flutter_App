import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_flutter_app/ChangeNotifiers/BlogListChangeNotifiers.dart';
import 'package:sample_flutter_app/Configuration/Config.dart';
import 'package:sample_flutter_app/Models/BlogModel.dart';
import 'package:sample_flutter_app/Screens/BlogEntry/BlogEntryScreen.dart';
import 'package:sample_flutter_app/Widgets/CircularContainer.dart';
import '../../../Constants.dart';




Widget blogTile(Blog blog, BuildContext context) {

  return InkWell(

    onTap: ()=> blogDetails(blog.id, context),

    child: Container(

      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding/2),

      decoration: circularEdges(10, 10, 10, 10, Colors.white),

      child: Row(children: [

        Expanded(
            flex: 2,
            child:  Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  decoration: circularEdges(10, 10, 10, 10, kGrey),

                  child: CachedNetworkImage(

                    imageUrl: blog.imageUrl,
                    placeholder: (context, url) => Image.asset('assets/images/placeHolder.gif'),
                    errorWidget: (context, url, error) => Center(child: Icon(Icons.error)),

                  ),
                ),
              ],
            ),
        ),

        SizedBox(width: kDefaultPadding/2,),

        Expanded(
            flex: 6,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                SizedBox(
                    child: Text(
                      blog.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline2.copyWith(fontSize: Config.heightMultiplier * 2.0,),
                    )
                ),

                SizedBox(height: kDefaultPadding/2,),
                Text(blog.createdAt),

              ],),
            )
        ),

        SizedBox(width: kDefaultPadding/2,),

      ],)


    ),
  );
}


void blogDetails(String blogId,BuildContext context){

  Provider.of<BlogListChangeNotifier>(context,listen:false).setSelectedBlogId(blogId);

  Navigator.push(context, MaterialPageRoute(builder: (context)=>BlogEntryScreen(blogId: blogId)));


}