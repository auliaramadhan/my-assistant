import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../theme/style.dart';
import '../../../utils/auto_router.dart';
import '../../../utils/utils.dart';
import '../../../widget/buttons/button_primary.dart';
import '../../../widget/spacing.dart';
import '../../../widget/stepper_registration.dart';

class RegistrasiAboutScreen extends StatefulWidget {
  RegistrasiAboutScreen({Key? key}) : super(key: key);

  @override
  State<RegistrasiAboutScreen> createState() => _RegistrasiAboutScreenState();
}

class _RegistrasiAboutScreenState extends State<RegistrasiAboutScreen> {
  final GlobalKey<FormState> formKey = GlobalKey();
  final namaCtrl = TextEditingController();
  final gajiMaxCtrl = TextEditingController();
  final gajiMinCtrl = TextEditingController();
  final skillCtrl = TextEditingController();
  final kontakCtrl = TextEditingController();
  final kotaCtrl = TextEditingController();
  final aboutCtrl = TextEditingController();
  final kerjaCtrl = TextEditingController();
  final lamaKerjaCtrl = TextEditingController();

  @override
  void dispose() {
    namaCtrl.dispose();
    gajiMaxCtrl.dispose();
    gajiMinCtrl.dispose();
    skillCtrl.dispose();
    kontakCtrl.dispose();
    kotaCtrl.dispose();
    aboutCtrl.dispose();
    kerjaCtrl.dispose();
    lamaKerjaCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Form(
      key: formKey,
      child: ListView(
        children: [
          const StepperRegistration(numberStep: 3, complete: 2),
          Text('Tentang Anda', style: textStyle.titleLarge),
          const ExtraHeight(16),
          Text('Daerah Tinggal Sekarang *', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          TextFormField(
            validator: Utils.validatorForm("Kota harap diisi"),
            controller: kotaCtrl,
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'Pilih Kota',
              suffixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_drop_down_outlined)),
            ),
          ),
          const ExtraHeight(16),
          Text('Gaji yang Diinginkan ', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          // Row(
          //   children: [
          //     TextFormField(
          //       controller: gajiMinCtrl,
          //       decoration: AppStyle.inputTextBorder.copyWith(hintText: 'Minimum', prefixText: 'Rp'),
          //     ),
          //     TextFormField(
          //       controller: gajiMaxCtrl,
          //       decoration: AppStyle.inputTextBorder.copyWith(hintText: 'Maksimum', prefixText: 'Rp'),
          //     ),
          //   ],
          // ),
          const ExtraHeight(16),
          Text('Keahlian ', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          TextFormField(
            controller: skillCtrl,
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'Pilih Keahlian',
            ),
          ),
          const ExtraHeight(16),
          Text('Jenis Kontrak Kerja', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          TextFormField(
            controller: kontakCtrl,
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'Pilih jenis kontrak',
            ),
          ),
          const ExtraHeight(16),
          Text('Tentang Anda', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          SizedBox(
              // constraints: const BoxConstraints(minHeight: 250, maxHeight: 250),
              height: 200,
              child: TextFormField(
                controller: aboutCtrl,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                textAlignVertical: TextAlignVertical.top,
                expands: true,
                decoration: AppStyle.inputTextBorder.copyWith(
                  hintText: 'Ceritakan tentang Anda minimal 2-5 kalimat',
                  // border:
                ),
              )),
          const ExtraHeight(16),
          Text('Pengalaman Kerja', style: textStyle.titleLarge),
          const ExtraHeight(4),
          const Divider(),
          const ExtraHeight(8),
          Text('Nama Pekerjaan', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          TextFormField(
            controller: kerjaCtrl,
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'Anda bekerja sebagai apa?',
            ),
          ),
          const ExtraHeight(16),
          Text('Lama Bekerja', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          TextFormField(
            controller: lamaKerjaCtrl,
            decoration: AppStyle.inputTextBorder.copyWith(hintText: '0', suffixText: 'Tahun'),
          ),
          Text('Jika pengalaman kurang dari 1 tahun, Anda dapat isi 1 Tahun', style: textStyle.caption),
          const ExtraHeight(16),
          ButtonPrimary(
            onPressed: () {
              AutoRouter.of(context).push(const RegistrasiIdentitasRoute());
              // context.router.ne
            },
            text: "Selanjutnya",
          ),
        ],
      ),
    );
  }
}
