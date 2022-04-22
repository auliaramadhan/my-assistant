
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_assistant/model/register_request.dart';
import 'package:my_assistant/provider/register/register_state.dart';
import 'package:my_assistant/repository/register.dart';

final registerReqDataProv = StateProvider<RegisterRequest>((ref) {
  return RegisterRequest();
});

final Provider = StateNotifierProvider<RegisterProvider, RegisterState>((ref) {
  return RegisterProvider(ref);
});

class RegisterProvider extends StateNotifier<RegisterState> {
  final _repo = RegisterRepository();
  final StateNotifierProviderRef _ref;
  RegisterProvider(this._ref) : super(const RegisterState.init());

  void registerAsisten() async {
    state = const RegisterState.loading();
    try {
      final request = _ref.read(registerReqDataProv);
      final data = await _repo.registerAssistant(request);
    } catch (e) {
      state = RegisterState.success(null);
    }
  }

  void verifyAsisten() async {
    state = const RegisterState.loading();
    try {
      final request = _ref.read(registerReqDataProv);
      final data = await _repo.registerAssistant(request);
    } catch (e) {
      state = RegisterState.success(null);
    }
  }
}