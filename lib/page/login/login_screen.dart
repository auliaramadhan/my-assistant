import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_assistant/utils/auto_router.dart';
import 'package:my_assistant/utils/utils.dart';
import '../../theme/images.dart';
import '../../theme/style.dart';
import '../../widget/buttons/button_primary.dart';
import '../../widget/spacing.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  var hidePass = false;

  @override
  void initState() {
    super.initState();
    print('Screen Login Start');
  }

  @override
  void dispose() {
    emailCtrl.dispose();
    passCtrl.dispose();
    super.dispose();
  }

  buttonVisibilty() => IconButton(
      onPressed: () {
        setState(() {
          hidePass = !hidePass;
        });
      },
      icon: Icon(hidePass ? Icons.visibility : Icons.visibility_off_outlined));

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // shrinkWrap: true,
        children: [
          SvgPicture.asset(IconsApp.logoApp, alignment: Alignment.centerLeft, height: 100),
          Text('Welcome', style: textStyle.titleLarge),
          Text('Silahkan masuk kembali', style: textStyle.subtitle1),
          const ExtraHeight(16),
          Text('Email', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          TextFormField(
            validator: Utils.validatorForm("Email harap diisi"),
            controller: emailCtrl,
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'Email',
            ),
          ),
          const ExtraHeight(16),
          Text('Password', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          TextFormField(
            validator: Utils.validatorForm("Password harap diisi"),
            controller: passCtrl,
            obscureText: hidePass,
            obscuringCharacter: '●',
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'Password',
              suffixIcon: buttonVisibilty(),
            ),
          ),
          const ExtraHeight(8),
          GestureDetector(
            onTap: () => context.pushRoute(const ForgotPasaRoute()),
            child: const Text("Lupa Password ? ", style: AppStyle.textWarning, textAlign: TextAlign.right),
          ),
          const ExtraHeight(16),
          ButtonPrimary(onPressed: () {}, text: "Masuk"),
          const Spacer(),
          RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(text: 'Belum punya akun? ', style: textStyle.caption),
                TextSpan(
                  text: 'Daftar',
                  style: AppStyle.textWarning,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      context.pushRoute(const RegistrasiRoute());
                    },
                ),
              ])),
        ],
      ),
    );
  }
}
