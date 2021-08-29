
<p align="center">
  <strong>Bottom Nav Swipe Up</strong> is flutter package to show bottom navigation on swipe up and hide it on swipe down.
</p>

<p align="center">
<img src="raw.githubusercontent.com/faizahmmd/bottom_nav_swipe_up/example/assets/screen_shots/bottom_nav_closed.jpg" width="310" height="640">
<img src="raw.githubusercontent.com/faizahmmd/bottom_nav_swipe_up/example/assets/screen_shots/bottom_nav_open.jpg" width="310" height="640">
<img src="raw.githubusercontent.com/faizahmmd/bottom_nav_swipe_up/example/assets/screen_shots/bottom_nav_gif.jif" width="310" height="640">
<img src="raw.githubusercontent.com/faizahmmd/bottom_nav_swipe_up/example/assets/screen_shots/bottom_nav_custom.jpg" width="310" height="640">
</p>


# Table of contents
  * [Getting Started](#getting-started)
  * [Usage](#usage)
  * [Documentation](#documentation)
    * [SlidableScreen](#slidablescreen)
  * [Author & Support](#author--support)


# Getting Started

* Add this to your pubspec.yaml
  ```
  dependencies:
  bottom_nav_swipe_up: ^0.0.6

  ```
* Get the package from Pub:

  ```
  flutter packages get
  ```
* Import it in your file

  ```
  import 'package:bottom_nav_swipe_up/bottom_nav_swipe_up.dart';
  ```

# Usage

 - *`Bottom Nav Swipe Up`* just requires the slidable and bottom navigation bar widgets. Just to provide flexibity to the developer to design its own UI through it.
 ```dart
 bottomNavigationBarWidget = Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("My slidable widget"),
                              Text("Hey"),
                            ],
                          );
 ```
 ```dart
 slidableWidget = Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("My bottom nav widget"),
                              Text("Hey"),
                            ],
                          );
 ```

 * Now just pass these widgets to SlidableScreen widget.
 ```dart
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: SlidableScreen(
              scaffoldBackgroundColor: Colors.white,
              backgroundColor: Colors.grey,
              slidableWidgetBackgroundColor: Colors.white,
              bottomNavigationBarBackgroundColor: Colors.grey,
              bottomNavigationBarWidget: bottomNavigationBarWidget,
              slidableWidget: slidableWidget
      ),
    );
  }
 ```

 * Check out the complete [Example](https://github.com/faizahmmd/bottom_nav_swipe_up/tree/main/example)

# Documentation

## SlidableScreen

Please Refer to [API documentation](https://pub.dev/documentation/bottom_nav_swipe_up/latest/index.html) for more details.

| Property | Type | Description | Default Value |
|-|:-:|-|:-:|
| scaffoldBackgroundColor | `Color` | Set a background color for scaffold. | @required value |
| backgroundColor | `Color` | Set a background color for background. | @required value |
| slidableWidgetBackgroundColor | `Color` | Set a background color for slidable widget. | @required value |
| bottomNavigationBarBackgroundColor | `Color` | Set a background color for bottom navigation bar. | @required value |
| bottomNavigationBarWidget | `Widget` | Widget you want to display as bottom navigation bar. | @required value |
| slidableWidget | `Widget` | Widget you want to display as slidable screen. | @required value |


# Author & support
This project is created by [Faiz Ahammed](https://github.com/faizahmmd) but with lots of support and help. See credits.
> If you appreciate my work, consider buying me a cup of :coffee: to keep me recharged :metal:
>  + [PayPal](https://www.paypal.me/faizahmmd)
>
> Or you can also connect/endorse me on [LinkedIn](https://www.linkedin.com/in/faiz-ahammed-82b013b7/) or [Instagram](https://www.instagram.com/faizahmmd/) to keep me motivated.


<img src="https://cdn-images-1.medium.com/max/1200/1*2yFbiGdcACiuLGo4dMKmJw.jpeg" width="90" height="35">
