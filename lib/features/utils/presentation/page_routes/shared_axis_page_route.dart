import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

/// Implements Material Design Shared Axis Transition.
/// 
/// Source: https://verygood.ventures/blog/2020/2/25/a-deep-dive-into-the-flutter-animations-package
class SharedAxisPageRoute extends PageRouteBuilder {
  SharedAxisPageRoute({
    @required Widget page,
    @required SharedAxisTransitionType transitionType,
  }) : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> primaryAnimation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> primaryAnimation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return SharedAxisTransition(
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
              transitionType: transitionType,
              child: child,
            );
          },
        );
}
