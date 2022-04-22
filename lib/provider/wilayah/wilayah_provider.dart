import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_assistant/model/wilayah_response.dart';
import 'package:my_assistant/repository/wilayah.dart';

final selectedProvinsiProvider = StateProvider<WilayahData?>((_) {
  return null;
});

final selectedKabupatenProvider = StateProvider<WilayahData?>((_) {
  return null;
});

final selectedKecamatanProvider = StateProvider<WilayahData?>((ref) {
  return null;
});
final selectedKelurahanProvider = StateProvider<WilayahData?>((_) {
  return null;
});

final provinsiListProvider = FutureProvider<List<WilayahData>>((ref) {
  return ref.read(wilayahRepoProvider).fetchListProvinsi();
});

final kabupatenListProvider = FutureProvider<List<WilayahData>>((ref) {
  final provinsi = ref.watch(selectedProvinsiProvider);
  return ref.read(wilayahRepoProvider).fetchListKabupaten('31');
  if (provinsi != null) {
  } else {
    return [];
  }
});

final kecamatanListProvider = FutureProvider<List<WilayahData>>((ref) {
  final kabupaten = ref.watch(selectedKabupatenProvider);
  if (kabupaten != null) {
    return ref.read(wilayahRepoProvider).fetchListKecamatan(kabupaten.id);
  } else {
    return [];
  }
});

final kelurahanListProvider = FutureProvider<List<WilayahData>>((ref) {
  final kecamatan = ref.watch(selectedKecamatanProvider);
  if (kecamatan != null) {
    return ref.read(wilayahRepoProvider).fetchListKelurahan(kecamatan.id);
  } else {
    return [];
  }
});

// final selectedProvinsiProvider = StateProvider<WilayahData?>((ref) {
//   return null;
// });
// final selectedProvinsiProvider = StateProvider<WilayahData?>((ref) {
//   return null;
// });

final wilayahControllerProvider = Provider<WilayahController>((ref) {
  return WilayahController(ref.read);
});

class WilayahController {
  final Reader _read;
  WilayahController(this._read);

  void changeProvinsi() {
    _read(selectedKabupatenProvider.notifier).state = null;
    _read(selectedKecamatanProvider.notifier).state = null;
    _read(selectedKelurahanProvider.notifier).state = null;
  }

  void changeKabupaten() {
    _read(selectedKecamatanProvider.notifier).state = null;
    _read(selectedKelurahanProvider.notifier).state = null;
  }

  void changeKecamatan() {
    _read(selectedKelurahanProvider.notifier).state = null;
  }
}
