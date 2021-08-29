library bottom_nav_swipe_up;
import 'package:flutter/material.dart';
import 'constants.dart';
import 'home_controller.dart';

class SlidableScreen extends StatefulWidget {
   final Widget? slidableWidget, bottomNavigationBarWidget;
   final Color? scaffoldBackgroundColor, backgroundColor, slidableWidgetBackgroundColor, bottomNavigationBarBackgroundColor;
   SlidableScreen({this.slidableWidget, this.bottomNavigationBarWidget, this.backgroundColor, this.bottomNavigationBarBackgroundColor, this.scaffoldBackgroundColor, this.slidableWidgetBackgroundColor});

   @override
  _SlidableScreenState createState() => _SlidableScreenState();
}

class _SlidableScreenState extends State<SlidableScreen> {
  final controller = HomeController();

  void _onVerticalGesture(DragUpdateDetails details) {
    if (details.primaryDelta! < -0.7) {
      controller.changeHomeState(HomeState.cart);
    } else if (details.primaryDelta! > 12) {
      controller.changeHomeState(HomeState.normal);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.scaffoldBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: Container(
          color: widget.backgroundColor,
          child: AnimatedBuilder(
              animation: controller,
              builder: (context, _) {
                return LayoutBuilder(
                  builder: (context, BoxConstraints constraints) {
                    return Stack(
                      children: [
                        AnimatedPositioned(
                          duration: panelTransition,
                          top: controller.homeState == HomeState.normal
                              ? 0.0
                              : -(constraints.maxHeight -
                              (constraints.maxHeight/1.12)),
                          left: 0,
                          right: 0,
                          height: constraints.maxHeight  -
                              cartBarHeight,
                          child: GestureDetector(
                            onVerticalDragUpdate: _onVerticalGesture,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: defaultPadding),
                              decoration: BoxDecoration(
                                color: widget.slidableWidgetBackgroundColor,
                                borderRadius:  BorderRadius.only(
                                  bottomLeft:
                                  Radius.circular(defaultPadding * controller.borderRadius),
                                  bottomRight:
                                  Radius.circular(defaultPadding * controller.borderRadius),
                                ),
                              ),
                              child: widget.slidableWidget,
                            ),
                          ),
                        ),
                        // Card Panel
                        AnimatedPositioned(
                          duration: panelTransition,
                          bottom: 0,
                          left: 0,
                          right: 0,
                          height: controller.homeState == HomeState.normal
                              ? cartBarHeight
                              : (constraints.maxHeight - (constraints.maxHeight/1.12)),
                          child: GestureDetector(
                            onVerticalDragUpdate: _onVerticalGesture,
                            child: Container(
                              padding: const EdgeInsets.all(defaultPadding),
                              color: widget.bottomNavigationBarBackgroundColor,
                              alignment: Alignment.topLeft,
                              child: AnimatedSwitcher(
                                duration: panelTransition,
                                child: controller.homeState == HomeState.normal
                                    ? Container()
                                    : widget.bottomNavigationBarWidget,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              }),
        ),
      ),
    );
  }
}

