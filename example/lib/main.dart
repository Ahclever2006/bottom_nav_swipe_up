import 'package:bottom_nav_swipe_up/bottom_nav_swipe_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Nav Example App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: SlidableScreen(
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: Colors.grey,
        slidableWidgetBackgroundColor: Colors.white,
        bottomNavigationBarBackgroundColor: Colors.grey,
        bottomNavigationBarWidget: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                //Todo
              },
              child: Container(
                width: 35,
                height: 35,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Image.asset(
                      "assets/images/user.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                //Todo
              },
              child: Container(
                width: 35,
                height: 35,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Image.asset(
                      "assets/images/wallet.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                //Todo
              },
              child: Container(
                width: 35,
                height: 35,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Image.asset(
                      "assets/images/dollar.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                //Todo
              },
              child: Container(
                width: 35,
                height: 35,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Image.asset(
                      "assets/images/add.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
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
