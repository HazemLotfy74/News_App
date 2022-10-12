
class ArticleModel  {
final String? title;
final String? description;
final String? url;
final String? url_to_image;

ArticleModel({required this.title, required this.description,required this.url,required this.url_to_image});

factory ArticleModel.fromjson(Map<String,dynamic> json){ // عملنا مودل يستقبل الداتا من ال api
  return ArticleModel(
      title:json['title'] ,
      description:json['description'] ,
      url: json['url'],
      url_to_image:json['urlToImage']
  );
}
}


