import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_assistant/model/register_request.dart';
import 'package:my_assistant/widget/buttons/button_border.dart';
import 'package:my_assistant/widget/modal_checkbox.dart';

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

class RegistrasiAboutScreen extends ConsumerStatefulWidget {
  RegistrasiAboutScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<RegistrasiAboutScreen> createState() => _RegistrasiAboutScreenState();
}

class _RegistrasiAboutScreenState extends ConsumerState<RegistrasiAboutScreen> {
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
  final kecamatanCtrl = TextEditingController();
  var listPengalamanKey = [GlobalKey<_PengalamanKerjaState>()];

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
    aboutCtrl.dispose();
    kabupatenCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final kabupatenProvider = ref.watch(kabupatenListProvider(WilayahData(id: '31', name: 'name')).future);
    final kecamatanProvider = ref.watch(kecamatanListProvider(selectedKabupaten).future);
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
            onTap: () => _showModalKabupaten(kabupatenProvider),
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
            onTap: () => _showModalKecamatan(kecamatanProvider),
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'Pilih Kecamatan',
              fillColor: selectedKabupaten == null ? Colors.grey.shade300 : null,
              suffixIcon: const Icon(Icons.arrow_drop_down_outlined),
            ),
          ),
          const ExtraHeight(16),
          Row(children: [
            Text('Keahlian ', style: textStyle.bodyLarge),
            GestureDetector(
              onTap: () {
                _showModalSkill();
              },
              child: const Text("tambah", style: AppFont.body14Info),
            )
          ]),
          const ExtraHeight(16),
          Text('Jenis Kontrak Kerja', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          Row(
            children: [
              Expanded(
                child: CheckboxListTile(
                  value: true,
                  title: const Text("Full Time"),
                  selectedTileColor: ColorApp.selectedCard,
                  shape: AppStyle.tileBorder,
                  onChanged: (_) {},
                ),
              ),
              Expanded(
                child: CheckboxListTile(
                  value: true,
                  title: const Text("Part Time"),
                  selectedTileColor: ColorApp.selectedCard,
                  shape: AppStyle.tileBorder,
                  onChanged: (_) {},
                ),
              ),
            ],
          ),
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
          for (var i = 0; i < listPengalamanKey.length; i++)
            _PengalamanKerja(
              index: i,
              key: listPengalamanKey[i],
            ),
          ButtonBorder(
            onPressed: () {
              if (listPengalamanKey.length > 3) {
                Utils.showInfo(context, "batas pengalaman 5");
                return;
              }
              setState(() {
                listPengalamanKey.add(GlobalKey());
              });
            },
            text: "Tambah Pengalaman",
          ),
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

  void _showModalSkill() {
    showModalBottomSheet(
      context: context,
      shape: AppStyle.bottomSheetBorder,
      builder: (_) => StatefulBuilder(
        builder: (context, setState) => ModalCheckbox<SkillOption>(
            title: "Pilih Keahlian",
            listData: listSkill,
            listText: listSkill.map((e) => e.skillName!),
            onChanged: (value) {
              // setState(() => selectedPerkawinan = value!);
              // statusCtrl.text = value.skillName!;
            }),
      ),
    );
  }

  void _showModalKecamatan(Future<List<WilayahData>> kabupaten) {
    // ref.refresh(kecamatanListProvider);
    if (selectedKabupaten == null) return;
    showModalBottomSheet(
      context: context,
      shape: AppStyle.bottomSheetBorder,
      builder: (_) => StatefulBuilder(builder: (context, setState) {
        return FutureBuilder<List<WilayahData>>(
          future: kabupaten,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              //Build you UI
              final data = snapshot.data;
              return ModalRadio<WilayahData?>(
                  title: "Pilih Kecamatan",
                  listData: data!,
                  listText: data.map((e) => e.name).toList(),
                  // selected: ref.watch(selectedKecamatanProvider),
                  selected: selectedKecamatan,
                  onChanged: (value) {
                    kecamatanCtrl.text = value?.name ?? '';
                    setState(() {
                      selectedKecamatan = value;
                    });
                    this.setState(() {});
                  });
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        );
      }),
    );
  }

  void _showModalKabupaten(Future<List<WilayahData>> kabupaten) {
    // ref.refresh(kabupatenListProvider);
    showModalBottomSheet(
      context: context,
      shape: AppStyle.bottomSheetBorder,
      builder: (_) => StatefulBuilder(builder: (context, setState) {
        return FutureBuilder<List<WilayahData>>(
          future: kabupaten,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              //Build you UI
              final data = snapshot.data;
              return ModalRadio<WilayahData?>(
                  title: "Pilih Kecamatan",
                  listData: data!,
                  listText: data.map((e) => e.name).toList(),
                  // selected: ref.watch(selectedKecamatanProvider),
                  selected: selectedKabupaten,
                  onChanged: (value) {
                    kabupatenCtrl.text = value?.name ?? '';
                    setState(() {
                      selectedKabupaten = value;
                    });
                    this.setState(() {});
                  });
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        );
      }),
    );
  }
}

const listKontrak = ['Full Time', 'Part TIme'];
final listSkill = [
  SkillOption(skillId: 1, skillName: "menyapu"),
  SkillOption(skillId: 2, skillName: "mencuci"),
  SkillOption(skillId: 3, skillName: "mengasuh anak"),
];

class SkillOption extends CheckboxButtonSelected {
  SkillOption({
    this.skillId,
    this.skillName,
  });

  final int? skillId;
  final String? skillName;
}

class _PengalamanKerja extends StatefulWidget {
  final int index;
  _PengalamanKerja({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<_PengalamanKerja> createState() => _PengalamanKerjaState();
}

class _PengalamanKerjaState extends State<_PengalamanKerja> {
  WorkExperience saveData() {
    return WorkExperience(
      experienceName: kerjaCtrl.text,
      experienceYears: int.parse(lamaKerjaCtrl.text),
      description: kontribusiCtrl.text,
    );
  }

  final kerjaCtrl = TextEditingController();

  final lamaKerjaCtrl = TextEditingController();

  final kontribusiCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: AppStyle.cardBorder,
      child: Column(
        children: [
          Text('Pengalaman Kerja ${widget.index}', style: textStyle.titleLarge),
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
                  keyboardType: TextInputType.number,
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
          const ExtraHeight(16),
          Text('Lama Bekerja', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          const ExtraHeight(),
          Text('Kontribusi', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          SizedBox(
              // constraints: const BoxConstraints(minHeight: 250, maxHeight: 250),
              height: 200,
              child: TextFormField(
                controller: kontribusiCtrl,
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
        ],
      ),
    );
  }
}
