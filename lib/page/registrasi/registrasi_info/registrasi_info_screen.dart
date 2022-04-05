import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/images.dart';
import '../../../theme/style.dart';
import '../../../utils/auto_router.dart';
import '../../../utils/utils.dart';
import '../../../utils/widget.dart';
import '../../../widget/buttons/button_primary.dart';
import '../../../widget/modal_radio.dart';
import '../../../widget/spacing.dart';
import '../../../widget/stepper_registration.dart';

class RegistrasInformasiScreen extends StatefulWidget {
  const RegistrasInformasiScreen({Key? key}) : super(key: key);

  @override
  State<RegistrasInformasiScreen> createState() => _RegistrasInformasiScreen();
}

const jenisId = ['KTP', 'SIM', 'Passport'];

class _RegistrasInformasiScreen extends State<RegistrasInformasiScreen> {
  final GlobalKey<FormState> formKey = GlobalKey();
  final namaCtrl = TextEditingController();
  final tempatLahirCtrl = TextEditingController();
  final tglLahirCtrl = TextEditingController();
  final alamatCtrl = TextEditingController();
  final kotaCtrl = TextEditingController();
  final kecamatanCtrl = TextEditingController();
  final statusCtrl = TextEditingController();
  final genderCtrl = TextEditingController();
  final jenisIDCtrl = TextEditingController();
  final kartuIDCtrl = TextEditingController();
  final nomorIDCtrl = TextEditingController();

  String? selected;

  @override
  void dispose() {
    namaCtrl.dispose();
    tempatLahirCtrl.dispose();
    tglLahirCtrl.dispose();
    alamatCtrl.dispose();
    kotaCtrl.dispose();
    kecamatanCtrl.dispose();
    statusCtrl.dispose();
    genderCtrl.dispose();
    jenisIDCtrl.dispose();
    kartuIDCtrl.dispose();
    nomorIDCtrl.dispose();
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
          const ExtraHeight(16),
          Text('Informasi Akun', style: textStyle.titleLarge),
          const ExtraHeight(16),
          Text('Jenis Identitas *', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          TextFormField(
            validator: Utils.validatorForm("jenis Identitas harap diisi"),
            controller: jenisIDCtrl,
            // readOnly: true,
            readOnly: true,
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'Pilih jenis Identitas',
              suffixIcon: IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    shape: AppStyle.bottomSheetBorder,
                    builder: (_) => StatefulBuilder(
                      builder: (context, setState) => ModalRadio<String?>(
                          title: "Pilih Jenis Identitas",
                          listData: jenisId,
                          listText: jenisId,
                          selected: selected,
                          onChanged: (value) {
                            setState(() => selected = value!);
                            jenisIDCtrl.text = value!;
                          }),
                    ),
                  );
                },
                icon: const Icon(Icons.arrow_drop_down_outlined),
              ),
            ),
          ),
          const ExtraHeight(8),
          Text('Upload Kartu Identitas *', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          TextFormField(
            validator: Utils.validatorForm("Harap Upload Kartu Identitas"),
            controller: kartuIDCtrl,
            readOnly: true,
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'Silakan upload kartu identitas',
              suffixIcon: WidgetApp.suffixField('upload', const TextStyle(color: ColorApp.warning)),
            ),
          ),
          const ExtraHeight(8),
          Text('Nomor Identitas *', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          TextFormField(
            validator: Utils.validatorForm("Nomor Identitas Harap diiisi"),
            controller: nomorIDCtrl,
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'Masukkan Nomor Identitas',
            ),
          ),
          Text('Pastikan nomor yang dimasukkan sama dengan jenis identitas yang sudah dipilih', style: textStyle.caption),
          Text('Nama Lengkap *', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          TextFormField(
            validator: Utils.validatorForm("Nama harap diisi"),
            controller: namaCtrl,
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'Nama Lengkap',
            ),
          ),
          const ExtraHeight(16),
          Text('Tempat Lahir *', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          TextFormField(
            validator: Utils.validatorForm("Tempat Lahir harap diisi"),
            controller: tempatLahirCtrl,
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'Tempat Lahir',
            ),
          ),
          const ExtraHeight(16),
          Text('Tanggal Lahir *', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          TextFormField(
            validator: Utils.validatorForm("Tanggal Lahir harap diisi"),
            controller: tglLahirCtrl,
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'HH/BB/TT',
            ),
          ),
          const ExtraHeight(16),
          Text('Alamat Lengkap *', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          TextFormField(
            validator: Utils.validatorForm("Alamat Lengkap Lahir harap diisi"),
            controller: alamatCtrl,
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'Masukkan Alamat Lengkap',
            ),
          ),
          const ExtraHeight(16),
          Text('Kota *', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          TextFormField(
            validator: Utils.validatorForm("Kota harap diisi"),
            controller: kotaCtrl,
            readOnly: true,
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'Pilih Kota',
              suffixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_drop_down_outlined)),
            ),
          ),
          const ExtraHeight(16),
          Text('Kecamatan *', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          TextFormField(
            validator: Utils.validatorForm("Kecamatan harap diisi"),
            controller: kecamatanCtrl,
            readOnly: true,
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'Pilih Kecamatan',
              suffixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_drop_down_outlined)),
            ),
          ),
          const ExtraHeight(16),
          Text('Status Perkawinan *', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          TextFormField(
            validator: Utils.validatorForm("Status Perkawinan harap diisi"),
            controller: statusCtrl,
            readOnly: true,
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'Pilih Status Perkawinan',
              suffixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_drop_down_outlined)),
            ),
          ),
          const ExtraHeight(16),
          Text('Jenis Kelamin *', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          TextFormField(
            validator: Utils.validatorForm("Jenis Kelamin harap diisi"),
            controller: genderCtrl,
            decoration: AppStyle.inputTextBorder.copyWith(
                hintText: 'Pilih Jenis Kelamin',
                suffixIcon: PopupMenuButton(
                  icon: const Icon(Icons.arrow_drop_down_outlined),
                  // icon: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_drop_down_outlined)),
                  onSelected: (String value) {
                    genderCtrl.text = value;
                  },
                  itemBuilder: (BuildContext context) {
                    return ['Pria', 'Wanita'].map<PopupMenuItem<String>>((String value) {
                      return PopupMenuItem(child: Text(value), value: value);
                    }).toList();
                  },
                )),
          ),
          const ExtraHeight(16),
          ButtonPrimary(
            onPressed: () {
              AutoRouter.of(context).push(const RegistrasiAboutRoute());
            },
            text: "Selanjutnya",
          ),
        ],
      ),
    );
  }
}
