import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../theme/images.dart';
import '../../theme/style.dart';
import '../../utils/auto_router.dart';
import '../../utils/utils.dart';
import '../../widget/buttons/button_primary.dart';
import '../../widget/spacing.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ResetPasswordPage> {
  final passCtrl = TextEditingController();
  final repassCtrl = TextEditingController();
  var showPass = false;
  var showrePass = false;

  buttonVisibilty(bool visible, Function() fn) => IconButton(
      onPressed: () {
        setState(fn);
      },
      icon: Icon(visible ? Icons.visibility : Icons.visibility_off_outlined));
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
            const Text('Buat password baru Anda. Pastikan mudah diingat supaya Anda tidak lupa lagi. Tapi untuk keamanan buat kombinasi password yang kuat 🙂'),
            const ExtraHeight(16),
            Text('Password', style: textStyle.bodyLarge),
            const ExtraHeight(8),
            TextFormField(
              validator: Utils.validatorForm("Password harap diisi"),
              controller: passCtrl,
              obscureText: showPass,
              obscuringCharacter: '●',
              decoration: AppStyle.inputTextBorder.copyWith(
                hintText: 'Password',
                suffixIcon: buttonVisibilty(showPass, () => showPass = !showPass),
              ),
            ),
            const ExtraHeight(16),
            Text('Ulangi Password', style: textStyle.bodyLarge),
            const ExtraHeight(8),
            TextFormField(
              validator: Utils.validatorForm("Password harap diisi"),
              controller: repassCtrl,
              obscureText: showrePass,
              obscuringCharacter: '●',
              decoration: AppStyle.inputTextBorder.copyWith(
                hintText: 'Password',
                suffixIcon: buttonVisibilty(showrePass, () => showrePass = !showrePass),
              ),
            ),
            const Spacer(),
            ButtonPrimary(
              onPressed: () {
                context.navigateTo(const LoginRoute());
                // context.router.popUntil((route) =>  route.settings.name == LoginRoute.name);
              },
              text: "Selanjutnya",
            ),
          ],
        ),
      ),
    );
  }
}
