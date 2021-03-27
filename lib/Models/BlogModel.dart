

class Blog{

  String title, imageUrl, createdAt , id;


  Blog({
    this.title,
    this.imageUrl,
    this.createdAt,
    this.id
  });


  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
        title : json["title"],
        imageUrl : json["imageUrl"],
        createdAt : json["createdAt"],
        id : json["id"]
    );
  }





}