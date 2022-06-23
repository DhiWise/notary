import 'package:flutter/material.dart';
import 'package:notaryyy/core/app_export.dart';

class AppStyle {
  static TextStyle textstylerobotomedium16 = textstylerobotomedium161.copyWith(
    color: ColorConstant.black9007e,
  );

  static TextStyle textstyleregular20 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      20,
    ),
    fontWeight: FontWeight.w400,
  );

  static TextStyle textstylerobotomedium24 = textstylerobotomedium32.copyWith(
    fontSize: getFontSize(
      24,
    ),
  );

  static TextStyle textstylerobotomedium161 = textstylerobotomedium32.copyWith(
    fontSize: getFontSize(
      16,
    ),
  );

  static TextStyle textstylerobotobold20 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w700,
  );

  static TextStyle textstyletimesnewromanpsmt12 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      12,
    ),
    fontFamily: 'Times New Roman',
    fontWeight: FontWeight.w400,
  );

  static TextStyle textstyleregular16 = TextStyle(
    color: ColorConstant.bluegray400,
    fontSize: getFontSize(
      16,
    ),
    fontWeight: FontWeight.w400,
  );

  static TextStyle textstylerobotomedium32 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      32,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  );
}
