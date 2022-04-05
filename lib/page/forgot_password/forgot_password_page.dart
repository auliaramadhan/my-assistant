import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_assistant/page/forgot_password/reset_password_page.dart';
import 'package:my_assistant/theme/images.dart';
import 'package:my_assistant/theme/style.dart';
import 'package:my_assistant/utils/auto_router.dart';
import 'package:my_assistant/widget/buttons/button_primary.dart';
import 'package:my_assistant/widget/spacing.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final emailCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // final mediaQuery = MediaQuery.of(context);
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SvgPicture.asset(IconsApp.logoApp, alignment: Alignment.centerLeft, height: 100),
            Text('Lupa Password?', style: textStyle.titleLarge),
            const Text('Jangan khawatir itu terjadi, silakan masukkan alamat email Anda yang terdaftar, selanjutnya kami akan beri panduan melalui email'),
            const ExtraHeight(16),
            Text('Email', style: textStyle.bodyLarge),
            const ExtraHeight(8),
            TextFormField(
              validator: (value) {
                if ((value ?? '').isEmpty) {
                  return "Email harap diisi";
                }
              },
              controller: emailCtrl,
              decoration: AppStyle.inputTextBorder.copyWith(
                hintText: 'Masukkan email Anda',
              ),
            ),
            const Spacer(),
            ButtonPrimary(
              onPressed: () {
                context.pushRoute(const ResetPasswordRoute());
                // context.popRoute();
              },
              text: "Selanjutnya",
            ),
          ],
        ),
      ),
    );
  }
}