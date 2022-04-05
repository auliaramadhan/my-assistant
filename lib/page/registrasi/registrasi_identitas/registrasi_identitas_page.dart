import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import 'registrasi_identitas_screen.dart';

class RegistrasiIdentitasPage extends StatelessWidget {
  const RegistrasiIdentitasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Akun'),
      ),
      body: KeyboardDismisser(
        child: Container(
          padding: EdgeInsets.all(16),
          child: RegistrasiIdentitasScreen(),
        ),
      ),
    );
  }
}