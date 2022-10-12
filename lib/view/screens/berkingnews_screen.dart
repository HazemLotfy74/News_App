// image =  "https://www.salonlfc.com/wp-content/uploads/2018/01/image-not-found-scaled-1150x647.png"
// const Color(0xff151f2c),
import 'package:flutter/material.dart';
import 'package:newsapp2/provider/breakingnews_provider.dart';
import 'package:newsapp2/view/screens/web_view_screen.dart';
import 'package:provider/provider.dart';

import '../widgets/list_view_widget.dart';



class BreakingNewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News app'),
      ),
      body: Consumer<BreakingNewsProvider>(builder: (context, value, child) {
        return value.breakingNewsList.length==0?Center(child: CircularProgressIndicator()):ListView_Widget(newslist: value.breakingNewsList,);
      },)
    );
  }
}
