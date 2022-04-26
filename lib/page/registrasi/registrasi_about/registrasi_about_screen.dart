import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../model/wilayah_response.dart';
import '../../../provider/wilayah/wilayah_provider.dart';
import '../../../theme/colors.dart';
import '../../../theme/font.dart';
import '../../../theme/style.dart';
import '../../../utils/auto_router.dart';
import '../../../utils/utils.dart';
import '../../../utils/widget.dart';
import '../../../widget/buttons/button_primary.dart';
import '../../../widget/modal_radio.dart';
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
  final gajiFullMaxCtrl = TextEditingController();
  final gajiPartMaxCtrl = TextEditingController();
  final gajiFullMinCtrl = TextEditingController();
  final gajiPartMinCtrl = TextEditingController();
  final skillCtrl = TextEditingController();
  final kontakCtrl = TextEditingController();
  final kabupatenCtrl = TextEditingController();
  final aboutCtrl = TextEditingController();
  final kerjaCtrl = TextEditingController();
  final lamaKerjaCtrl = TextEditingController();
  final kecamatanCtrl = TextEditingController();

  WilayahData? selectedKabupaten;

  WilayahData? selectedKecamatan;

  @override
  void dispose() {
    namaCtrl.dispose();
    gajiFullMaxCtrl.dispose();
    gajiPartMaxCtrl.dispose();
    gajiFullMinCtrl.dispose();
    gajiPartMinCtrl.dispose();
    skillCtrl.dispose();
    kontakCtrl.dispose();
    kabupatenCtrl.dispose();
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
          const StepperRegistration(numberStep: 3, complete: 3),
          const ExtraHeight(),
          Text('Tentang Anda', style: textStyle.titleLarge),
          const ExtraHeight(),
          Text('Kota Tinggal Sekarang *', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          TextFormField(
            validator: Utils.validatorForm("Kota harap diisi"),
            controller: kabupatenCtrl,
            readOnly: true,
            onTap: _showModalKabupaten,
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'Pilih Kota',
              suffixIcon: const Icon(Icons.arrow_drop_down_outlined),
            ),
          ),
          const ExtraHeight(),
          Text('Kecamatan Tinggal Sekarang *', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          TextFormField(
            validator: Utils.validatorForm("Kecamatan harap diisi"),
            controller: kecamatanCtrl,
            readOnly: true,
            onTap: _showModalKecamatan,
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'Pilih Kecamatan',
              suffixIcon: const Icon(Icons.arrow_drop_down_outlined),
            ),
          ),
          const ExtraHeight(16),
          Row(children: [
            Text('Keahlian ', style: textStyle.bodyLarge),
            GestureDetector(
              onTap: () {},
              child: const Text("tambah", style: AppFont.body14Info),
            )
          ]),
          const ExtraHeight(16),
          Text('Jenis Kontrak Kerja', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          Row(children: [
            CheckboxListTile(
              value: true,
              title: Text("Full TIme"),
              selectedTileColor: ColorApp.selectedCard,
              shape: AppStyle.tileBorder,
              onChanged: (_) {},
            ),
            CheckboxListTile(
              value: true,
              title: Text("Part TIme"),
              selectedTileColor: ColorApp.selectedCard,
              shape: AppStyle.tileBorder,
              onChanged: (_) {},
            ),
          ]),
          const ExtraHeight(8),
          Text('Pilih jenis kontrak kerja yang Anda inginkan. Anda dapat memilih lebih dari satu',
              style: textStyle.caption),
          const ExtraHeight(16),
          Text('Gaji yang Diinginkan ', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          Text('Full Time ', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: gajiFullMinCtrl,
                  decoration:
                      AppStyle.inputTextBorder.copyWith(hintText: 'Minimum', prefixIcon: WidgetApp.prefixField('Rp')),
                ),
              ),
              const ExtraWidth(8),
              Expanded(
                child: TextFormField(
                  controller: gajiFullMaxCtrl,
                  decoration:
                      AppStyle.inputTextBorder.copyWith(hintText: 'Maksimum', prefixIcon: WidgetApp.prefixField('Rp')),
                ),
              ),
            ],
          ),
          const ExtraHeight(8),
          Text('Full Time ', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: gajiPartMinCtrl,
                  decoration:
                      AppStyle.inputTextBorder.copyWith(hintText: 'Minimum', prefixIcon: WidgetApp.prefixField('Rp')),
                ),
              ),
              const ExtraWidth(8),
              Expanded(
                child: TextFormField(
                  controller: gajiPartMaxCtrl,
                  decoration:
                      AppStyle.inputTextBorder.copyWith(hintText: 'Maksimum', prefixIcon: WidgetApp.prefixField('Rp')),
                ),
              ),
            ],
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
                  hintMaxLines: 2,
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
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 7,
                child: TextFormField(
                  controller: kerjaCtrl,
                  decoration: AppStyle.inputTextBorder.copyWith(
                    hintText: 'Nama Pekerjaan',
                  ),
                ),
              ),
              const ExtraWidth(4),
              Expanded(
                flex: 3,
                child: TextFormField(
                  controller: lamaKerjaCtrl,
                  decoration: AppStyle.inputTextBorder.copyWith(
                    hintText: '0-1',
                    suffixIcon: const Icon(Icons.arrow_drop_down_outlined),
                  ),
                ),
              ),
            ],
          ),
          const ExtraHeight(16),
          Text('Jika pengalaman kurang dari 1 tahun, Anda dapat isi 1 Tahun', style: textStyle.caption),
          Text('Lama Bekerja', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          const ExtraHeight(),
          Text('Kontribusi', style: textStyle.bodyLarge),
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
                  hintText: 'Jelaskan apa saja yang Anda lakukan pada pekerjaan ini?',
                  hintMaxLines: 2,
                  // border:
                ),
              )),
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

  void _showModalKecamatan() {
    // ref.refresh(kecamatanListProvider);
    showModalBottomSheet(
      context: context,
      shape: AppStyle.bottomSheetBorder,
      builder: (_) => StatefulBuilder(builder: (context, setState) {
        return Consumer(
          builder: (context, ref, child) {
            // final kabupaten = ref.watch(kecamatanListProvider);
            final kabupaten = ref.watch(kecamatanListProvider(selectedKabupaten));
            return kabupaten.when(
              error: (error, stackTrace) {
                return Text('Error');
              },
              data: (List<WilayahData> data) {
                return ModalRadio<WilayahData?>(
                    title: "Pilih Kecamatan",
                    listData: data,
                    listText: data.map((e) => e.name).toList(),
                    // selected: ref.watch(selectedKecamatanProvider),
                    selected: selectedKecamatan,
                    onChanged: (value) {
                      kecamatanCtrl.text = value?.name ?? '';
                      setState(() {
                        selectedKecamatan = value;
                      });
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
            // final kabupaten = ref.watch(kabupatenListProvider);
            final kabupaten = ref.watch(kabupatenListProvider(WilayahData(id: '31', name: 'name')));
            return kabupaten.when(
              error: (error, stackTrace) {
                return const Center(child: Text('asdas'));
              },
              data: (List<WilayahData> data) {
                return ModalRadio<WilayahData?>(
                    title: "Pilih Kota / Kabupaten",
                    listData: data,
                    listText: data.map((e) => e.name).toList(),
                    selected: selectedKabupaten,
                    onChanged: (value) {
                      kabupatenCtrl.text = value?.name ?? '';
                      setState(() {
                        selectedKabupaten = value;
                      });
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

const listKontrak = ['Full Time', 'Part TIme'];
