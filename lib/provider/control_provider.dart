import 'package:flutter/material.dart';
import 'package:newsapp2/view/screens/berkingnews_screen.dart';
import 'package:newsapp2/view/screens/sports_screen.dart';

import '../view/screens/search_screen.dart';


class ControlProvider extends ChangeNotifier {
int currentindex=0;
Widget currentscreen = BreakingNewsScreen();
void changescreen(index){
  currentindex=index;
  switch(index){
    case 0 :
      currentscreen=BreakingNewsScreen();
      break;
    case 1 :
      currentscreen=SportsScreen();
      break;
    case 2 :
      currentscreen = SearchScreen();
      break;
  }
  notifyListeners();
}

}
