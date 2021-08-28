import 'package:bottom_nav_swipe_up/bottom_nav_swipe_up.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bottom_nav_swipe_up',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SlidableScreen(
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        slidableWidgetBackgroundColor: Colors.white,
        bottomNavigationBarBackgroundColor: Colors.grey,
        bottomNavigationBarWidget: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("My bottom nav bar"),
            Text("Hey")
          ],
        ),
        slidableWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("My slidable widget"),
            Text("Hey"),
          ],
        ),
      ),
    );
  }
}
