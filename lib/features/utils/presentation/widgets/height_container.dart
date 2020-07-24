import 'package:flutter/material.dart';

class HeightContainer extends StatelessWidget {
  const HeightContainer({
    Key key,
    @required this.child,
    this.isUseAppBar = true,
    this.addedHeight = 0.0,
  }) : super(key: key);

  final Widget child;
  final bool isUseAppBar;
  final double addedHeight;

  @override
  Widget build(BuildContext context) {
    double appBarHeight;
    if (isUseAppBar) {
      appBarHeight = AppBar().preferredSize.height;
    } else {
      appBarHeight = 0.0;
    }

    final deviceHeight = MediaQuery.of(context).size.height;
    final totalHeight = deviceHeight - appBarHeight;

    return Container(
      height: totalHeight + addedHeight,
      child: child,
    );
  }
}
