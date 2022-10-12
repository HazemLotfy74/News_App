import 'package:flutter/material.dart';
import 'package:newsapp2/provider/breakingnews_provider.dart';
import 'package:newsapp2/provider/control_provider.dart';
import 'package:newsapp2/provider/search_provider.dart';
import 'package:newsapp2/provider/sports_provider.dart';
import 'package:newsapp2/view/widgets/control_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ControlProvider(),),
    ChangeNotifierProvider(create: (context) => BreakingNewsProvider()..getAllBreakingNews(),),
    ChangeNotifierProvider(create: (context) => SearchProvider(),),
    ChangeNotifierProvider(create: (context) => SportsProvider()..getAllSportsNews(),),
  ],
  child:  MyApp(),));
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25)
        ),
      ),
      home: ControlView()
    );
  }
}

