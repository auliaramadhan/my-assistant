import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_assistant/model/wilayah_response.dart';
import 'package:my_assistant/provider/wilayah/wilayah_provider.dart';

import '../../../theme/colors.dart';
import '../../../theme/style.dart';
import '../../../utils/auto_router.dart';
import '../../../utils/utils.dart';
import '../../../utils/widget.dart';
import '../../../widget/buttons/button_primary.dart';
import '../../../widget/modal_radio.dart';
import '../../../widget/spacing.dart';
import '../../../widget/stepper_registration.dart';

class RegistrasInformasiScreen extends ConsumerStatefulWidget {
  const RegistrasInformasiScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<RegistrasInformasiScreen> createState() => _RegistrasInformasiScreen();
}

const jenisId = ['KTP', 'SIM', 'Passport'];

class _RegistrasInformasiScreen extends ConsumerState<RegistrasInformasiScreen> {
  final GlobalKey<FormState> formKey = GlobalKey();
  final namaCtrl = TextEditingController();
  final tempatLahirCtrl = TextEditingController();
  final tglLahirCtrl = TextEditingController();
  final alamatCtrl = TextEditingController();
  final kabupatenCtrl = TextEditingController();
  final kecamatanCtrl = TextEditingController();
  final statusCtrl = TextEditingController();
  final genderCtrl = TextEditingController();
  final jenisIDCtrl = TextEditingController();
  final kartuIDCtrl = TextEditingController();
  final nomorIDCtrl = TextEditingController();

  String? selectedIdentitas;

  @override
  void dispose() {
    namaCtrl.dispose();
    tempatLahirCtrl.dispose();
    tglLahirCtrl.dispose();
    alamatCtrl.dispose();
    kabupatenCtrl.dispose();
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
                onPressed: _showModalIdentitas,
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
          Text('Pastikan nomor yang dimasukkan sama dengan jenis identitas yang sudah dipilih',
              style: textStyle.caption),
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
            onTap: () {
              showDatePicker(context: context, initialDate: DateTime(1980), firstDate: DateTime(2020), lastDate: DateTime(2023));
            },
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
            controller: kabupatenCtrl,
            readOnly: true,
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'Pilih kabupaten',
              suffixIcon: IconButton(onPressed: _showModalKabupaten, icon: const Icon(Icons.arrow_drop_down_outlined)),
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
              suffixIcon: IconButton(onPressed: _showModalKecamatan, icon: const Icon(Icons.arrow_drop_down_outlined)),
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

  void _showModalIdentitas() {
    showModalBottomSheet(
      context: context,
      shape: AppStyle.bottomSheetBorder,
      builder: (_) => StatefulBuilder(
        builder: (context, setState) => ModalRadio<String?>(
            title: "Pilih Jenis Identitas",
            listData: jenisId,
            listText: jenisId,
            selected: selectedIdentitas,
            onChanged: (value) {
              setState(() => selectedIdentitas = value!);
              jenisIDCtrl.text = value!;
            }),
      ),
    );
  }

  void _showModalKecamatan() {
    // ref.refresh(kecamatanListProvider);
    showModalBottomSheet(
      context: context,
      shape: AppStyle.bottomSheetBorder,
      builder: (_) => StatefulBuilder(builder: (context, setState) {
        return Consumer(
          builder: (context, ref, child) {
            final kabupaten = ref.watch(kecamatanListProvider);
            return kabupaten.when(
              error: (error, stackTrace) {
                return Text('Error');
              },
              data: (List<WilayahData> data) {
                return ModalRadio<WilayahData?>(
                    title: "Pilih Kecamatan",
                    listData: data,
                    listText: data.map((e) => e.name).toList(),
                    selected: ref.watch(selectedKecamatanProvider),
                    onChanged: (value) {
                      kecamatanCtrl.text = value?.name ?? '';
                      ref.read(selectedKecamatanProvider.notifier).state = value;
                    });
              },
              loading: () {
                return const Center(child: CircularProgressIndicator());
              },
            );
          },
        );
      }),
    );
  }

  void _showModalKabupaten() {
    // ref.refresh(kabupatenListProvider);
    showModalBottomSheet(
      context: context,
      shape: AppStyle.bottomSheetBorder,
      builder: (_) => StatefulBuilder(builder: (context, setState) {
        return Consumer(
          builder: (context, ref, child) {
            final kabupaten = ref.watch(kabupatenListProvider);
            return kabupaten.when(
              error: (error, stackTrace) {
                return const Center(child: Text('asdas'));
                // return const SizedBox();
              },
              data: (List<WilayahData> data) {
                return ModalRadio<WilayahData?>(
                    title: "Pilih Kota / Kabupaten",
                    listData: data,
                    listText: data.map((e) => e.name).toList(),
                    selected: ref.watch(selectedKabupatenProvider),
                    onChanged: (value) {
                      kabupatenCtrl.text = value?.name ?? '';
                      ref.read(selectedKabupatenProvider.notifier).state = value;
                    });
              },
              loading: () {
                return const Center(child: CircularProgressIndicator());
              },
            );
          },
        );
      }),
    );
  }
}
