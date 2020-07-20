import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  MyAppBar({
    @required String textTitle,
    List<Widget> actions,
  }) : super(
          title: Text(textTitle),
          centerTitle: true,
          actions: actions,
        );
}
