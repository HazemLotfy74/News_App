import 'package:flutter/material.dart';

import '../../models/article_model.dart';
import '../screens/web_view_screen.dart';

class ListView_Widget extends StatelessWidget {
 List<ArticleModel> newslist ;


 ListView_Widget({required this.newslist});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder:(context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Web_View_Screen(url: newslist[index].url),));
          },
          child: Container(
            width: double.infinity,
            height: 150,
            child: Card(
              elevation: 5,
              child: Row(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Image(fit:BoxFit.cover,image: NetworkImage(newslist[index].url_to_image ?? "https://www.salonlfc.com/wp-content/uploads/2018/01/image-not-found-scaled-1150x647.png"
                    )

                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child:
                              Text(newslist[index].title ?? "No title",overflow: TextOverflow.ellipsis,maxLines: 3,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child:
                            Text(newslist[index].description ?? "No description",overflow: TextOverflow.ellipsis,maxLines: 3,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
      itemCount: newslist.length,);
  }
}
