import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

import '../page/forgot_password/forgot_password_page.dart';
import '../page/forgot_password/reset_password_page.dart';
import '../page/login/login_page.dart';
import '../page/registrasi/registrasi_about/registrasi_about_page.dart';
import '../page/registrasi/registrasi_identitas/registrasi_identitas_page.dart';
import '../page/registrasi/registrasi_info/registrasi_info_page.dart';

part 'auto_router.gr.dart';

@MaterialAutoRouter(
  // harus ada screen di namanya akan diganti Route
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: LoginPage, initial: true),
    AutoRoute(
      page: EmptyRouterPage,
      name: 'RegistrasiRoute',
      path: '/registrasi',
      children: [
        AutoRoute(page: RegistrasiInformasiPage),
        AutoRoute(page: RegistrasiAboutPage),
        AutoRoute(page: RegistrasiIdentitasPage, initial: true),
      ],
    ),
    AutoRoute(
      page: EmptyRouterPage,
      name: 'ForgotPasaRoute',
      path: '/forgot-pass',
      children: [
        AutoRoute(page: ForgotPasswordPage, initial: true),
        AutoRoute(page: ResetPasswordPage),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}

class MyObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    print('observer New route pushed: ${route.settings.name}');
    print('observer previous route: ${previousRoute?.settings.name ?? "none"}');
    // super.didPush(route, previousRoute)
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    print('observer New route pop: ${route.settings.name}');
    print('observer previous route : ${previousRoute?.settings.name ?? "none"}');
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    print('observer New route pop: ${route.settings.name}');
    print('observer previous route : ${previousRoute?.settings.name ?? "none"}');
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    print('observer Tab route visited: ${route.name}');
    print('observer previous route pop: ${previousRoute?.name ?? "none"}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    print('observer Tab route re-visited: ${route.name}');
    print('observer previous route pop: ${previousRoute.name}');
  }
}
