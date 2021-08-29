
//A new Flutter package to show bottom navigation on swipe up and hide it on swipe down.

<p align="center">
  Bottom Nav Swipe Up is flutter package to show bottom navigation on swipe up and hide it on swipe down.
</p>

<p align="center">
<img src="raw.githubusercontent.com/${use}/${repo}/${branch}/${path}" width="310" height="640">
<img src="raw.githubusercontent.com/${use}/${repo}/${branch}/${path}" width="310" height="640">
<img src="raw.githubusercontent.com/${use}/${repo}/${branch}/${path}" width="310" height="640">
<img src="raw.githubusercontent.com/${use}/${repo}/${branch}/${path}" width="310" height="640">
</p>


# Table of contents
  * [Getting Started](#getting-started)
  * [Usage](#usage)
  * [Documentation](#documentation)
    * [LiquidSwipe](#liquidswipe)
  	* [LiquidController](#liquidcontroller)
  * [Author & Support](#author--support)


# Getting Started

* Add this to your pubspec.yaml
  ```
  dependencies:
  liquid_swipe: ^2.1.0

  ```
* Get the package from Pub:

  ```
  flutter packages get
  ```
* Import it in your file

  ```
  import 'package:liquid_swipe/liquid_swipe.dart';
  ```

# Usage

 - *`Liquid Swipe`* just requires the list of [`Widgets like Container`](https://api.flutter.dev/flutter/widgets/Container-class.html). Just to provide flexibity to the developer to design its own UI through it.
 ```dart
 final pages = [
    Container(...),
    Container(...),
    Container(...),
  ];
 ```

 * Now just pass these pages to LiquidSwipe widget.
 ```dart
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Builder(
          builder: (context) =>
              LiquidSwipe(
                  pages: pages
              )),
    );
  }
 ```

 * Check out the complete [Example](https://github.com/iamSahdeep/liquid_swipe_flutter/tree/master/example)

# Documentation

## LiquidSwipe

Please Refer to [API documentation](https://pub.dev/documentation/liquid_swipe/latest/liquid_swipe/LiquidSwipe-class.html) for more details.

| Property | Type | Description | Default Value |
|-|:-:|-|:-:|
| pages | `List<Widget>` | Set Pages/Views/Containers. See complete example for usage. | @required value |
| fullTransitionValue | `double` | Handle swipe sensitivity  through it. Lower the value faster the animation | 400.0 |
| initialPage | `int` | Set initial page value, wrong position will throw exception. | 0 |
| slideIconWidget | `Widget` | Icon/Widget you want to display for swipe indication. Remember the curve will be created according to it. | null |
| positionSlideIcon | `double` | Icon position on vertical axis. Must satisfy this condition `0.0 <= value <= 1.0` | 0.8 |
| enableLoop | `bool` | Whether you want to loop through all those `pages`.  | true |
| liquidController | `LiquidController` | Controller to handle some runtime changes. [Refer](#liquidcontroller) | null |
| waveType | `WaveType enum` | Type of clipper you want to use. | WaveType.liquidReveal |
| onPageChangeCallback | `Callback` | Triggered whenever page changes. | null |
| currentUpdateTypeCallback | `Callback` | Triggered whenever UpdateType changes. [Refer](https://pub.dev/documentation/liquid_swipe/latest/Helpers_Helpers/UpdateType-class.html) | null |
| slidePercentCallback | `Callback` | Triggered on Swipe animation. Use carefully as its quite frequent on swipe. | null |
| ignoreUserGestureWhileAnimating | `bool` | If you want to block gestures while swipe is still animating. See #5 | false |
| disableUserGesture | `bool` | Disable user gesture, always. | false |
| enableSideReveal | `bool` | Enable/Disable side reveal | false |

## LiquidController

A Controller class with some utility fields and methods.

Simple Usage :

Firstly make an Object of LiquidController and initialize it in initState()
```dart
   LiquidController liquidController;

   @override
   void initState() {
   super.initState();
   liquidController = LiquidController();
   }
```

Now simply add it to LiquidSwipe's Constructor
```dart
   LiquidSwipe(
        pages: pages,
        LiquidController: liquidController,
    ),
```

Only Rules/Limitation to its Usage is, you can't use any method in Liquid Controller before build method is being called in which LiquidSwipe is initialized. So we have to use them after LiquidSwipe is Built

- Properties
  - `currentPage` - Getter to get current Page. Default value is 0.
  - `isUserGestureDisabled` - If somehow you want to check if gestures are disabled or not. Default value is false;
- Methods
  - `animateToPage({required int page, int duration = 600})`
     Animate to mentioned page within given Duration Remember the duration here is the total duration in which it will animate though all pages not the single page.
  - `jumpToPage({required int page})`
    Jump Directly to mentioned Page index but without Animation.
  -  `shouldDisableGestures({required bool disable})`
      Use this method to disable gestures during runtime, like on certain pages using OnPageChangeCallback.

Please Refer to [API documentation](https://pub.dev/documentation/liquid_swipe/latest/PageHelpers_LiquidController/LiquidController-class.html) for more details.

# Author & support
This project is created by [Sahdeep Singh](https://github.com/iamSahdeep) but with lots of support and help. See credits.
> If you appreciate my work, consider buying me a cup of :coffee: to keep me recharged :metal:
>  + [PayPal](https://www.paypal.me/sahdeep)
>
> Or you can also connect/endorse me on [LinkedIn](https://www.linkedin.com/in/iamsahdeep/) to keep me motivated.


<img src="https://cdn-images-1.medium.com/max/1200/1*2yFbiGdcACiuLGo4dMKmJw.jpeg" width="90" height="35">

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
