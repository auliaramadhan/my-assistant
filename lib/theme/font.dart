import 'package:flutter/widgets.dart';
import 'colors.dart';

abstract class AppFont {
  static const headlineMedium = TextStyle( fontSize: 34, fontWeight: FontWeight.w400);
  static const headlineSmall = TextStyle( fontSize: 24, fontWeight: FontWeight.w400);
  static const titleLarge = TextStyle( fontSize: 20, color: ColorApp.fontPrimary, fontWeight: FontWeight.w600);
  static const titleMedium = TextStyle( fontSize: 18, color: ColorApp.fontPrimary, fontWeight: FontWeight.w600);
  static const titleSmall = TextStyle( fontSize: 16, color: ColorApp.fontPrimary, fontWeight: FontWeight.w600);
  static const subtitleBold = TextStyle( fontSize: 14, color: ColorApp.fontGrey, fontWeight: FontWeight.w600);
  static const subtitle = TextStyle( fontSize: 14, color: ColorApp.fontGrey, fontWeight: FontWeight.w400);
  static const body14Bold = TextStyle( fontSize: 14, color: ColorApp.fontPrimary, fontWeight: FontWeight.w700);
  static const body14SemiBold = TextStyle( fontSize: 14, color: ColorApp.fontPrimary, fontWeight: FontWeight.w600);
  static const body14 = TextStyle( fontSize: 14, color: ColorApp.fontPrimary, fontWeight: FontWeight.w400);
  static const bodyBold = TextStyle( fontSize: 12, color: ColorApp.fontPrimary, fontWeight: FontWeight.w700);
  static const bodySemiBold = TextStyle( fontSize: 12, color: ColorApp.fontPrimary, fontWeight: FontWeight.w600);
  static const body = TextStyle( fontSize: 12, color: ColorApp.fontPrimary, fontWeight: FontWeight.w400);
  static const caption = TextStyle( fontSize: 10, color: ColorApp.fontGrey, fontWeight: FontWeight.w400);


  static const body14BoldInfo = TextStyle( fontSize: 14, color: ColorApp.fontInfo, fontWeight: FontWeight.w700);
  static const body14SemiBoldInfo = TextStyle( fontSize: 14, color: ColorApp.fontInfo, fontWeight: FontWeight.w600);
  static const body14Info = TextStyle( fontSize: 14, color: ColorApp.fontInfo, fontWeight: FontWeight.w400);
  static const bodyBoldInfo = TextStyle( fontSize: 12, color: ColorApp.fontInfo, fontWeight: FontWeight.w700);
  static const bodySemiBoldInfo = TextStyle( fontSize: 12, color: ColorApp.fontInfo, fontWeight: FontWeight.w600);
  static const bodyInfo = TextStyle( fontSize: 12, color: ColorApp.fontInfo, fontWeight: FontWeight.w400);

  static const body14BoldSuccess = TextStyle( fontSize: 14, color: ColorApp.fontSuccess, fontWeight: FontWeight.w700);
  static const body14SemiBoldSuccess = TextStyle( fontSize: 14, color: ColorApp.fontSuccess, fontWeight: FontWeight.w600);
  static const body14Success = TextStyle( fontSize: 14, color: ColorApp.fontSuccess, fontWeight: FontWeight.w400);
  static const bodyBoldSuccess = TextStyle( fontSize: 12, color: ColorApp.fontSuccess, fontWeight: FontWeight.w700);
  static const bodySemiBoldSuccess = TextStyle( fontSize: 12, color: ColorApp.fontSuccess, fontWeight: FontWeight.w600);
  static const bodySuccess = TextStyle( fontSize: 12, color: ColorApp.fontSuccess, fontWeight: FontWeight.w400);

  static const body14BoldError = TextStyle( fontSize: 14, color: ColorApp.fontError, fontWeight: FontWeight.w700);
  static const body14SemiBoldError = TextStyle( fontSize: 14, color: ColorApp.fontError, fontWeight: FontWeight.w600);
  static const body14Error = TextStyle( fontSize: 14, color: ColorApp.fontError, fontWeight: FontWeight.w400);
  static const bodyBoldError = TextStyle( fontSize: 12, color: ColorApp.fontError, fontWeight: FontWeight.w700);
  static const bodySemiBoldError = TextStyle( fontSize: 12, color: ColorApp.fontError, fontWeight: FontWeight.w600);
  static const bodyError = TextStyle( fontSize: 12, color: ColorApp.fontError, fontWeight: FontWeight.w400);

  // static form

  // static const TextStyle formlabel  = TextStyle( color: ColorApp.fieldText );
}