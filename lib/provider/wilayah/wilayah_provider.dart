import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../model/wilayah_response.dart';
import '../../repository/wilayah.dart';

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

final provinsiListProvider = FutureProvider<List<WilayahData> >((ref) {
  return ref.read(wilayahRepoProvider).fetchListProvinsi();
});

final kabupatenListProvider = FutureProvider.autoDispose.family<List<WilayahData>,WilayahData? >((ref,data) {
  ref.onDispose(() {
    print('wilayah kabupaten di dispose');
  });
  return ref.read(wilayahRepoProvider).fetchListKabupaten('31');
  
  if (data != null) {
  } else {
    return [];
  }
});

final kecamatanListProvider = FutureProvider.autoDispose.family<List<WilayahData>,WilayahData? >((ref,data) {
  ref.onDispose(() {
    print('wilayah  di dispose');
  });
  if (data != null) {
    return ref.read(wilayahRepoProvider).fetchListKecamatan(data.id);
  } else {
    return [];
  }
});

final kelurahanListProvider = FutureProvider.autoDispose.family<List<WilayahData>,WilayahData? >((ref,data) {
  if (data != null) {
    return ref.read(wilayahRepoProvider).fetchListKelurahan(data.id);
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

  void changeProvinsi(WilayahData value) {
    
    _read(selectedProvinsiProvider.notifier).state = value;
    _read(selectedKabupatenProvider.notifier).state = null;
    _read(selectedKecamatanProvider.notifier).state = null;
    _read(selectedKelurahanProvider.notifier).state = null;
  }

  void changeKabupaten(WilayahData value) {
    _read(selectedKabupatenProvider.notifier).state = value;
    _read(selectedKecamatanProvider.notifier).state = null;
    _read(selectedKelurahanProvider.notifier).state = null;
  }

  void changeKecamatan(WilayahData value) {
    _read(selectedKecamatanProvider.notifier).state = value;
    _read(selectedKelurahanProvider.notifier).state = null;
  }
  void changeKelurahan(WilayahData value) {
    _read(selectedKelurahanProvider.notifier).state = value;
  }
}
