import 'package:flutter/material.dart';
import 'package:newsapp2/provider/sports_provider.dart';
import 'package:newsapp2/view/screens/web_view_screen.dart';
import 'package:newsapp2/view/widgets/list_view_widget.dart';
import 'package:provider/provider.dart';

class SportsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sports News'),
        ),
        body: Consumer<SportsProvider>(builder: (context, value, child) {
          return value.sportList.length==0?Center(child: CircularProgressIndicator()):ListView_Widget(newslist: value.sportList);
        },)
    );
  }
}
