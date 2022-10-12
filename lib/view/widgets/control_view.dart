import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:newsapp2/provider/control_provider.dart';
import 'package:provider/provider.dart';

class ControlView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ControlProvider>(builder: (context, provider, child) {
      return Scaffold(
        body: provider.currentscreen,
        bottomNavigationBar:Container(
          decoration: BoxDecoration(
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(0.1)
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.grey,
                hoverColor: Colors.grey,
                gap: 8,
                activeColor: Colors.white,
                iconSize: 25,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 500),
                tabBackgroundColor: Colors.purple[300]!,
                color: Colors.white,
                tabs: [
                  GButton(
                    icon: LineIcons.newspaper,
                    text: 'Breaking News',
                  ),
                  GButton(
                    icon: Icons.sports,
                    text: 'Sports',
                  ),
                  GButton(
                    icon: LineIcons.search,
                    text: 'Search',
                  ),

                ],
                selectedIndex: provider.currentindex,
                onTabChange: (index) {
                  provider.changescreen(index);
                },
              ),
            ),
          ),
        ),
      );
    },);


  }
}
