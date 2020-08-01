import 'package:flutter/material.dart';

Future<void> push({
  @required BuildContext context,
  @required Widget page,
}) async {
  final route = MaterialPageRoute(builder: (_) => page);
  await Navigator.push(context, route);
}

Future<void> pushReplacement({
  @required BuildContext context,
  @required Widget page,
}) async {
  final route = MaterialPageRoute(builder: (_) => page);
  await Navigator.pushReplacement(context, route);
}

void pop({
  @required BuildContext context,
}) {
  Navigator.pop(context);
}