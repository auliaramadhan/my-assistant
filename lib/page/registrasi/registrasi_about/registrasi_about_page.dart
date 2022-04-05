import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import 'registrasi_about_screen.dart';

class RegistrasiAboutPage extends StatelessWidget {
  const RegistrasiAboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Akun'),
        automaticallyImplyLeading: false,
      ),
      body: KeyboardDismisser(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: RegistrasiAboutScreen(),
        ),
      ),
    );
  }
}
