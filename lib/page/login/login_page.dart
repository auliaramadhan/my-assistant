import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import 'login_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login'),
      // ),
      // extendBody: true,
      body: KeyboardDismisser(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            height: mediaQuery.size.height,
            child: LoginScreen(),
          ),
        ),
      ),
    );
  }
}
