import 'package:flutter/material.dart';
import 'registrasi_info_screen.dart';


class RegistrasiInformasiPage extends StatelessWidget {
  const RegistrasiInformasiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return  Scaffold(
      
      appBar: AppBar(
        title: const Text('Daftar Akun'),
        automaticallyImplyLeading: false,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: RegistrasInformasiScreen(),
      ),
    );
  }
}