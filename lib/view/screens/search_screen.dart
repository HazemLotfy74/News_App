import 'package:flutter/material.dart';
import 'package:newsapp2/provider/search_provider.dart';
import 'package:newsapp2/view/widgets/list_view_widget.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<SearchProvider>(builder: (context, value, child) {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Container(
              width: double.infinity,
              height: 50,
              child: TextFormField(
               onChanged: (index) {
                 value.getAllSearchArticle(index);
               },
                decoration: InputDecoration(
                  label: Text("Search for news"),
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),
            ),

          ),
          body:  value.searchList.length==0?Center(child: CircularProgressIndicator()):ListView_Widget(newslist: value.searchList,)

      );
    },);
  }
}
