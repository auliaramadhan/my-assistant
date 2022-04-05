import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../theme/images.dart';
import '../../../theme/style.dart';
import '../../../utils/auto_router.dart';
import '../../../utils/utils.dart';
import '../../../utils/widget.dart';
import '../../../widget/avatar_custom.dart';
import '../../../widget/buttons/button_primary.dart';
import '../../../widget/spacing.dart';
import '../../../widget/stepper_registration.dart';

class RegistrasiIdentitasScreen extends StatefulWidget {
  RegistrasiIdentitasScreen({Key? key}) : super(key: key);

  @override
  State<RegistrasiIdentitasScreen> createState() => _RegistrasInformasiScreen();
}

class _RegistrasInformasiScreen extends State<RegistrasiIdentitasScreen> {
  final GlobalKey<FormState> formKey = GlobalKey();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final repassCtrl = TextEditingController();
  final noHPCtrl = TextEditingController();
  var showPass = true;
  var showrePass = true;

  @override
  void dispose() {
    emailCtrl.dispose();
    passCtrl.dispose();
    repassCtrl.dispose();
    noHPCtrl.dispose();
    super.dispose();
  }

  buttonVisibilty(bool visible, Function() fn) => IconButton(
      onPressed: () {
        setState(fn);
      },
      icon: Icon(visible ? Icons.visibility : Icons.visibility_off_outlined));
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Form(
      key: formKey,
      child: ListView(
        children: [
          const StepperRegistration(numberStep: 3, complete: 1),
          const ExtraHeight(8),
          const AvatarUser(image: 'null'),
          const ExtraHeight(8),
          Text('Identitas Disi', style: textStyle.titleMedium),
          const ExtraHeight(8),
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
            obscureText: showPass,
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
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'Password',
              suffixIcon: buttonVisibilty(showrePass, () => showrePass = !showrePass),
            ),
          ),
          const ExtraHeight(16),
          Text('Nomor Telpon', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          TextFormField(
            validator: Utils.validatorForm("Nomor Telpon harap diisi"),
            controller: noHPCtrl,
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'Nomor Telpon',
              // prefixText: '+62',
              prefixIcon: WidgetApp.prefixField('+62'),
              // prefixStyle: const ,
            ),
          ),
          const ExtraHeight(36),
          ButtonPrimary(
            onPressed: () {
              AutoRouter.of(context).push(const RegistrasiInformasiRoute());
            },
            text: "Selanjutnya",
          ),
        ],
      ),
    );
  }
}
