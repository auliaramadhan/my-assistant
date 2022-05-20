import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../model/wilayah_response.dart';
import '../../../provider/wilayah/wilayah_provider.dart';
import '../../../theme/colors.dart';
import '../../../theme/font.dart';
import '../../../theme/style.dart';
import '../../../utils/auto_router.dart';
import '../../../utils/date_time.dart';
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
  String? selectedGender;
  WilayahData? selectedProvinsi;
  WilayahData? selectedKabupaten;
  WilayahData? selectedKecamatan;

  DateTime? tglLahirObject;

  var selectedPerkawinan;

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
    final kabupatenProvider = ref.watch(kabupatenListProvider(WilayahData(id: '31', name: 'name')).future);
    final kecamatanProvider = ref.watch(kecamatanListProvider(selectedKabupaten).future);
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
              suffixIcon: GestureDetector(
                onTap: () async {
                  final image = await ImagePicker().pickImage(source: ImageSource.camera);
                  kartuIDCtrl.text = image?.path ?? '';
                },
                child: WidgetApp.suffixField('upload', const TextStyle(color: ColorApp.info)),
              ),
            ),
          ),
          Text('Maks. 20MB dengan format jpeg', style: textStyle.caption),
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
            readOnly: true,
            controller: tglLahirCtrl,
            onTap: () {
              showDatePicker(
                context: context,
                locale: const Locale('id', 'ID'),
                initialDatePickerMode: DatePickerMode.year,
                initialDate: DateTime(2000),
                firstDate: DateTime(1970),
                lastDate: DateTime.now().subtract(const Duration(days: 365 * 10)),
              ).then((date) {
                tglLahirCtrl.text = DatetimeApp.datetoString(date) ?? '';
                tglLahirObject = date;
              });
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
            onTap: () => _showModalKabupaten(kabupatenProvider),
            readOnly: true,
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'Pilih Kota',
              suffixIcon: const Icon(Icons.arrow_drop_down_outlined),
            ),
          ),
          const ExtraHeight(16),
          Text('Kecamatan *', style: textStyle.bodyLarge),
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
          Text('Status Perkawinan *', style: textStyle.bodyLarge),
          const ExtraHeight(8),
          TextFormField(
            validator: Utils.validatorForm("Status Perkawinan harap diisi"),
            controller: statusCtrl,
            readOnly: true,
            onTap: _showModalPerkawinan,
            decoration: AppStyle.inputTextBorder.copyWith(
              hintText: 'Pilih Status Perkawinan',
              suffixIcon: const Icon(Icons.arrow_drop_down_outlined),
            ),
          ),
          const ExtraHeight(16),
          Text('Jenis Kelamin *', style: textStyle.bodyLarge),
          Row(
            children: listGender
                .map(
                  (value) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RadioListTile(
                        value: value,
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value as String?;
                          });
                        },
                        selectedTileColor: Colors.blue,
                        tileColor: Colors.white,
                        title: Text(value),
                        // shape: AppStyle.tileBorder,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const Text("Jenis Kelamin harap diisi", style: AppFont.body14Error),
          const ExtraHeight(8),
          /* -----------------
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
                    return listGender.map<PopupMenuItem<String>>((String value) {
                      return PopupMenuItem(child: Text(value), value: value);
                    }).toList();
                  },
                )),
          ),
          ----------- */
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

  void _showModalPerkawinan() {
    showModalBottomSheet(
      context: context,
      shape: AppStyle.bottomSheetBorder,
      builder: (_) => StatefulBuilder(
        builder: (context, setState) => ModalRadio<String?>(
            title: "Pilih Jenis Perkawinan",
            listData: jenisPerkawinan,
            listText: jenisPerkawinan,
            selected: selectedPerkawinan,
            onChanged: (value) {
              setState(() => selectedPerkawinan = value!);
              statusCtrl.text = value!;
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

  void _showModalProvinsi() {
    // ref.refresh(kabupatenListProvider);
    showModalBottomSheet(
      context: context,
      shape: AppStyle.bottomSheetBorder,
      builder: (_) => StatefulBuilder(builder: (context, setState) {
        return Consumer(
          builder: (context, ref, child) {
            final kabupaten = ref.watch(provinsiListProvider);
            return kabupaten.when(
              error: (error, stackTrace) {
                return const Center(child: Text('asdas'));
                // return const SizedBox();
              },
              data: (List<WilayahData> data) {
                return ModalRadio<WilayahData?>(
                    title: "Pilih Provinsi",
                    listData: data,
                    listText: data.map((e) => e.name).toList(),
                    selected: ref.watch(selectedProvinsiProvider),
                    onChanged: (value) {
                      kabupatenCtrl.text = value?.name ?? '';
                      ref.read(wilayahControllerProvider).changeProvinsi(value!);
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

const listGender = ['Pria', 'Wanita'];
const jenisId = ['KTP', 'SIM', 'Passport'];
const jenisPerkawinan = ['Lajang', 'Kawin', 'Cerai Hidup', 'Cerai Mati'];
