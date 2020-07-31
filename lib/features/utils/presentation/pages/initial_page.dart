import 'package:flutter/material.dart';

import '../../../auth/presentation/widgets/auth_guard.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AuthGuard(
      isRedirectToHome: true,
      child: Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}